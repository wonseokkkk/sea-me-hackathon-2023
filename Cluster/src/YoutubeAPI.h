#ifndef YOUTUBEAPI_H
#define YOUTUBEAPI_H

#include <QObject>
#include <QNetworkAccessManager>
#include <QNetworkReply>

class YoutubeAPI : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QString id READ id NOTIFY idUpdated)
    Q_PROPERTY(QString thumbnail READ thumbnail NOTIFY thumbnailUpdated)

public:
    explicit YoutubeAPI(QObject *parent = nullptr);
    Q_INVOKABLE void requestYoutube(const QString &part, const QString &chart);

    QString id() const;
    QString thumbnail() const;

signals:
    void idUpdated();
    void thumbnailUpdated();

private slots:
    void onYoutubeDataReceived(QNetworkReply *reply);

private:
    QNetworkAccessManager *networkManager;
    QString apiKey;

    // New member variables
    QString m_id;
    QString m_thumbnail;
};

#endif // YOUTUBEAPI_H
