package io.realm;

import java.util.Date;
import pl.jbzd.app.model.Picture;
/* compiled from: MediaRealmProxyInterface.java */
/* loaded from: classes3.dex */
public interface f {
    int realmGet$comments_counter();

    Date realmGet$date();

    int realmGet$height();

    int realmGet$id();

    String realmGet$image();

    boolean realmGet$in_queue();

    boolean realmGet$is_favorite();

    Date realmGet$media_added();

    String realmGet$movie();

    q<Picture> realmGet$pictures();

    int realmGet$pictures_counter();

    float realmGet$ratio();

    String realmGet$share_image();

    String realmGet$share_url();

    String realmGet$title();

    String realmGet$type();

    String realmGet$url();

    int realmGet$user_id();

    int realmGet$vote_score();

    int realmGet$voted();

    int realmGet$width();

    String realmGet$youtube();

    void realmSet$comments_counter(int i);

    void realmSet$date(Date date);

    void realmSet$height(int i);

    void realmSet$image(String str);

    void realmSet$in_queue(boolean z);

    void realmSet$is_favorite(boolean z);

    void realmSet$media_added(Date date);

    void realmSet$movie(String str);

    void realmSet$pictures_counter(int i);

    void realmSet$ratio(float f);

    void realmSet$share_image(String str);

    void realmSet$share_url(String str);

    void realmSet$title(String str);

    void realmSet$type(String str);

    void realmSet$url(String str);

    void realmSet$user_id(int i);

    void realmSet$vote_score(int i);

    void realmSet$voted(int i);

    void realmSet$width(int i);

    void realmSet$youtube(String str);
}
