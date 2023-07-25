#include <QNetworkAccessManager>
#include <QNetworkRequest>
#include <QNetworkReply>

class GoogleMapsAPI : public QObject
{
    Q_OBJECT

public:
    GoogleMapsAPI(QObject *parent = nullptr)
        : QObject(parent), networkManager(new QNetworkAccessManager(this)) {
        connect(networkManager, &QNetworkAccessManager::finished,
                this, &GoogleMapsAPI::onMapDataReceived);
    }

    void requestMap(const QString &location) {
        QString requestUrl = QString("https://maps.googleapis.com/maps/api/staticmap?center=%1&zoom=14&size=400x400&key=YOUR_API_KEY")
                             .arg(location);
        networkManager->get(QNetworkRequest(QUrl(requestUrl)));
    }

private slots:
    void onMapDataReceived(QNetworkReply *reply) {
        if (reply->error() == QNetworkReply::NoError) {
            // 이미지 데이터를 처리
            QByteArray mapData = reply->readAll();
            // ...
        }
    }

private:
    QNetworkAccessManager *networkManager;
};

