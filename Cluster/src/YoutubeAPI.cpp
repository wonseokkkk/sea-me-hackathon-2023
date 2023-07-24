#include "YoutubeAPI.h"
#include <QJsonDocument>
#include <QJsonObject>
#include <QJsonArray>
#include <iostream>

YoutubeAPI::YoutubeAPI(QObject *parent) : QObject(parent)
{
    networkManager = new QNetworkAccessManager(this);
    apiKey = "AIzaSyCaL4t98X6lcxY5MyX6rAxmdjlC2rSyikc"; // Replace with your OpenWeatherMap API key

    connect(networkManager, &QNetworkAccessManager::finished,
            this, &YoutubeAPI::onYoutubeDataReceived);
}

void YoutubeAPI::requestYoutube(const QString &part, const QString &chart)
{
    //QString requestUrl = QString("https://www.googleapis.com/youtube/v3/videos?part=snippet&chart=mostPopular&key=%1").arg(apiKey);
    QString requestUrl = QString("'https://youtube.googleapis.com/youtube/v3/videos?part=snippet&chart=mostPopular&key=%1").arg(apiKey);

    networkManager->get(QNetworkRequest(QUrl(requestUrl)));
}

void YoutubeAPI::onYoutubeDataReceived(QNetworkReply *reply)
{
    if (reply->error() == QNetworkReply::NoError){
        QJsonDocument doc = QJsonDocument::fromJson(reply->readAll());
        QJsonObject json = doc.object();

        m_id = json["items"].toArray()[0].toObject()["id"].toString();
        //m_id = json.value("videos").toArray().at(0).toObject().value("id").toString();
         m_thumbnail = json.value("videos").toArray().at(0).toObject().value("snippet").toObject().value("thumbnails").toObject().value("default").toObject().value("url").toString();

        emit idUpdated();
        emit thumbnailUpdated();
    }
}

QString YoutubeAPI::id() const {
    //return "https://www.youytube.com/embed/" + m_id;
    return "https://www.youtube.com/watch?v=dQdawjntG-Y";
}

QString YoutubeAPI::thumbnail() const{
    return m_thumbnail;

}
