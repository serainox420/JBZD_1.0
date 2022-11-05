package pl.jbzd.app.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.imagepipeline.cache.MediaVariationsIndexDatabase;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.realm.a;
import io.realm.internal.l;
import io.realm.q;
import io.realm.u;
import java.util.Date;
import java.util.Iterator;
import pl.jbzd.api.util.ApiUtils;
import pl.jbzd.app.model.realm.JacksonDeserializerRealmListComment;
import pl.jbzd.app.model.realm.JacksonDeserializerRealmListPicture;
import pl.jbzd.app.view.feed.FeedViewType;
import pl.jbzd.app.view.feed.model.BaseFeedModel;
@JsonIgnoreProperties(ignoreUnknown = true)
/* loaded from: classes.dex */
public class BaseMedia extends u implements a, BaseFeedModel {
    public static final Parcelable.Creator CREATOR = new Parcelable.Creator() { // from class: pl.jbzd.app.model.BaseMedia.1
        @Override // android.os.Parcelable.Creator
        public BaseMedia createFromParcel(Parcel parcel) {
            return new BaseMedia(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public BaseMedia[] newArray(int i) {
            return new BaseMedia[i];
        }
    };
    @JsonProperty("comments")
    @JsonDeserialize(using = JacksonDeserializerRealmListComment.class)
    public q<Comment> comments;
    @JsonProperty("date")
    @JsonFormat(pattern = "yyyy-MM-dd H:m:s", shape = JsonFormat.Shape.STRING, timezone = "CET")
    public Date date;
    @JsonProperty("media_image_height")
    public int height;
    @JsonProperty(MediaVariationsIndexDatabase.IndexEntry.COLUMN_NAME_MEDIA_ID)
    public int id;
    @JsonProperty("media_image")
    public String image;
    public boolean in_queue;
    public boolean isExpand;
    @JsonProperty("is_favorite")
    public boolean is_favorite;
    public int maxHeight;
    @JsonProperty("media_added")
    @JsonFormat(pattern = "yyyy-MM-dd H:m:s", shape = JsonFormat.Shape.STRING, timezone = "CET")
    public Date media_added;
    @JsonProperty("media_movie")
    public String movie;
    @JsonProperty("pictures")
    @JsonDeserialize(using = JacksonDeserializerRealmListPicture.class)
    public q<Picture> pictures;
    @JsonProperty("media_pictures")
    public int pictures_counter;
    public float ratio;
    @JsonProperty("media_share_image")
    public String share_image;
    @JsonProperty("media_share_url")
    public String share_url;
    @JsonProperty("media_title")
    public String title;
    @JsonProperty("media_type")
    public String type;
    @JsonProperty("media_url")
    public String url;
    @JsonProperty("users_id")
    public int user_id;
    @JsonProperty("media_vote_score")
    public int vote_score;
    public int voted;
    @JsonProperty("media_image_width")
    public int width;
    @JsonProperty("media_youtube_vid")
    public String youtube;

    public q realmGet$comments() {
        return this.comments;
    }

    public Date realmGet$date() {
        return this.date;
    }

    public int realmGet$height() {
        return this.height;
    }

    public int realmGet$id() {
        return this.id;
    }

    public String realmGet$image() {
        return this.image;
    }

    public boolean realmGet$in_queue() {
        return this.in_queue;
    }

    public boolean realmGet$is_favorite() {
        return this.is_favorite;
    }

    public Date realmGet$media_added() {
        return this.media_added;
    }

    public String realmGet$movie() {
        return this.movie;
    }

    public q realmGet$pictures() {
        return this.pictures;
    }

    public int realmGet$pictures_counter() {
        return this.pictures_counter;
    }

    public float realmGet$ratio() {
        return this.ratio;
    }

    public String realmGet$share_image() {
        return this.share_image;
    }

    public String realmGet$share_url() {
        return this.share_url;
    }

    public String realmGet$title() {
        return this.title;
    }

    public String realmGet$type() {
        return this.type;
    }

    public String realmGet$url() {
        return this.url;
    }

    public int realmGet$user_id() {
        return this.user_id;
    }

    public int realmGet$vote_score() {
        return this.vote_score;
    }

    public int realmGet$voted() {
        return this.voted;
    }

    public int realmGet$width() {
        return this.width;
    }

    public String realmGet$youtube() {
        return this.youtube;
    }

    public void realmSet$comments(q qVar) {
        this.comments = qVar;
    }

    public void realmSet$date(Date date) {
        this.date = date;
    }

    public void realmSet$height(int i) {
        this.height = i;
    }

    public void realmSet$id(int i) {
        this.id = i;
    }

    public void realmSet$image(String str) {
        this.image = str;
    }

    public void realmSet$in_queue(boolean z) {
        this.in_queue = z;
    }

    public void realmSet$is_favorite(boolean z) {
        this.is_favorite = z;
    }

    public void realmSet$media_added(Date date) {
        this.media_added = date;
    }

    public void realmSet$movie(String str) {
        this.movie = str;
    }

    public void realmSet$pictures(q qVar) {
        this.pictures = qVar;
    }

    public void realmSet$pictures_counter(int i) {
        this.pictures_counter = i;
    }

    public void realmSet$ratio(float f) {
        this.ratio = f;
    }

    public void realmSet$share_image(String str) {
        this.share_image = str;
    }

    public void realmSet$share_url(String str) {
        this.share_url = str;
    }

    public void realmSet$title(String str) {
        this.title = str;
    }

    public void realmSet$type(String str) {
        this.type = str;
    }

    public void realmSet$url(String str) {
        this.url = str;
    }

    public void realmSet$user_id(int i) {
        this.user_id = i;
    }

    public void realmSet$vote_score(int i) {
        this.vote_score = i;
    }

    public void realmSet$voted(int i) {
        this.voted = i;
    }

    public void realmSet$width(int i) {
        this.width = i;
    }

    public void realmSet$youtube(String str) {
        this.youtube = str;
    }

    public String toString() {
        return ApiUtils.toString(this, BaseMedia.class);
    }

    public BaseMedia() {
        if (this instanceof l) {
            ((l) this).a();
        }
        realmSet$voted(0);
        realmSet$ratio(BitmapDescriptorFactory.HUE_RED);
        realmSet$in_queue(false);
        this.isExpand = false;
        realmSet$pictures(new q());
        realmSet$in_queue(false);
        this.isExpand = false;
        realmSet$voted(0);
    }

    @JsonCreator
    public BaseMedia(@JsonProperty("media_type") String str, @JsonProperty("media_image_width") int i, @JsonProperty("media_image_height") int i2) {
        if (this instanceof l) {
            ((l) this).a();
        }
        realmSet$voted(0);
        realmSet$ratio(BitmapDescriptorFactory.HUE_RED);
        realmSet$in_queue(false);
        this.isExpand = false;
        realmSet$pictures(new q());
        realmSet$in_queue(false);
        this.isExpand = false;
        realmSet$voted(0);
        realmSet$type(str);
        if (!FeedViewType.GIF.name.equals(str)) {
            setSize(i, i2);
        } else {
            setSize(i, i2 + 36);
        }
    }

    public void setSize(int i, int i2) {
        realmSet$width(i);
        realmSet$height(i2 - 36);
        if (realmGet$width() == 0 || realmGet$height() == 0) {
            realmSet$ratio(-1.0f);
        } else {
            realmSet$ratio(realmGet$width() / realmGet$height());
        }
    }

    public BaseMedia(int i, int i2, boolean z) {
        if (this instanceof l) {
            ((l) this).a();
        }
        realmSet$voted(0);
        realmSet$ratio(BitmapDescriptorFactory.HUE_RED);
        realmSet$in_queue(false);
        this.isExpand = false;
        setSize(i, i2 + 36);
    }

    public int getId() {
        return realmGet$id();
    }

    public void setId(int i) {
        realmSet$id(i);
    }

    public int getUser_id() {
        return realmGet$user_id();
    }

    public void setUser_id(int i) {
        realmSet$user_id(i);
    }

    public String getType() {
        return realmGet$type();
    }

    public void setType(String str) {
        realmSet$type(str);
    }

    public String getImage() {
        return realmGet$image();
    }

    public void setImage(String str) {
        realmSet$image(str);
    }

    public String getMovie() {
        return realmGet$movie();
    }

    public void setMovie(String str) {
        realmSet$movie(str);
    }

    public int getWidth() {
        return realmGet$width();
    }

    public void setWidth(int i) {
        realmSet$width(i);
    }

    public int getHeight() {
        return realmGet$height();
    }

    public void setHeight(int i) {
        realmSet$height(i);
    }

    public int getPictures_counter() {
        return realmGet$pictures_counter();
    }

    public void setPictures_counter(int i) {
        realmSet$pictures_counter(i);
    }

    public Date getMedia_added() {
        return realmGet$media_added();
    }

    public void setMedia_added(Date date) {
        realmSet$media_added(date);
    }

    public String getTitle() {
        return realmGet$title();
    }

    public void setTitle(String str) {
        realmSet$title(str);
    }

    public String getUrl() {
        return realmGet$url();
    }

    public void setUrl(String str) {
        realmSet$url(str);
    }

    public int getVote_score() {
        return realmGet$vote_score();
    }

    public void setVote_score(int i) {
        realmSet$vote_score(i);
    }

    public Date getDate() {
        return realmGet$date();
    }

    public void setDate(Date date) {
        realmSet$date(date);
    }

    public String getShare_url() {
        return realmGet$share_url();
    }

    public void setShare_url(String str) {
        realmSet$share_url(str);
    }

    public String getShare_image() {
        return realmGet$share_image();
    }

    public void setShare_image(String str) {
        realmSet$share_image(str);
    }

    public String getYoutube() {
        return realmGet$youtube();
    }

    public void setYoutube(String str) {
        realmSet$youtube(str);
    }

    public q<Picture> getPictures() {
        return realmGet$pictures();
    }

    public void setPictures(q<Picture> qVar) {
        realmSet$pictures(qVar);
    }

    public q<Comment> getComments() {
        return realmGet$comments();
    }

    public void setComments(q<Comment> qVar) {
        realmSet$comments(qVar);
    }

    public boolean isIn_queue() {
        return realmGet$in_queue();
    }

    public void setIn_queue(boolean z) {
        realmSet$in_queue(z);
    }

    public int getVoted() {
        return realmGet$voted();
    }

    public void setVoted(int i) {
        realmSet$voted(i);
    }

    public float getRatio() {
        return realmGet$ratio();
    }

    public void setRatio(float f) {
        realmSet$ratio(f);
    }

    public boolean isExpand() {
        return this.isExpand;
    }

    public void setExpand(boolean z) {
        this.isExpand = z;
    }

    public int getMaxHeight() {
        return this.maxHeight;
    }

    public void setMaxHeight(int i) {
        this.maxHeight = i;
    }

    public boolean is_favorite() {
        return realmGet$is_favorite();
    }

    public void setIs_favorite(boolean z) {
        realmSet$is_favorite(z);
    }

    public BaseMedia(Parcel parcel) {
        boolean z = true;
        if (this instanceof l) {
            ((l) this).a();
        }
        realmSet$voted(0);
        realmSet$ratio(BitmapDescriptorFactory.HUE_RED);
        realmSet$in_queue(false);
        this.isExpand = false;
        realmSet$id(parcel.readInt());
        realmSet$user_id(parcel.readInt());
        realmSet$type(parcel.readString());
        realmSet$image(parcel.readString());
        realmSet$movie(parcel.readString());
        realmSet$width(parcel.readInt());
        realmSet$height(parcel.readInt());
        realmSet$pictures_counter(parcel.readInt());
        realmSet$media_added((Date) parcel.readSerializable());
        realmSet$title(parcel.readString());
        realmSet$url(parcel.readString());
        realmSet$vote_score(parcel.readInt());
        realmSet$date((Date) parcel.readSerializable());
        realmSet$share_url(parcel.readString());
        realmSet$share_image(parcel.readString());
        realmSet$youtube(parcel.readString());
        realmSet$voted(parcel.readInt());
        realmSet$ratio(parcel.readFloat());
        realmSet$in_queue(parcel.readInt() > 0);
        this.isExpand = parcel.readInt() > 0;
        realmSet$is_favorite(parcel.readInt() <= 0 ? false : z);
        this.maxHeight = parcel.readInt();
        realmSet$pictures(new q());
        int readInt = parcel.readInt();
        for (int i = 0; i < readInt; i++) {
            realmGet$pictures().a((q) ((Picture) parcel.readParcelable(Picture.class.getClassLoader())));
        }
        realmSet$comments(new q());
        int readInt2 = parcel.readInt();
        for (int i2 = 0; i2 < readInt2; i2++) {
            realmGet$comments().a((q) ((Comment) parcel.readParcelable(Comment.class.getClassLoader())));
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int i2 = 1;
        parcel.writeInt(realmGet$id());
        parcel.writeInt(realmGet$user_id());
        parcel.writeString(realmGet$type());
        parcel.writeString(realmGet$image());
        parcel.writeString(realmGet$movie());
        parcel.writeInt(realmGet$width());
        parcel.writeInt(realmGet$height());
        parcel.writeInt(realmGet$pictures_counter());
        parcel.writeSerializable(realmGet$media_added());
        parcel.writeString(realmGet$title());
        parcel.writeString(realmGet$url());
        parcel.writeInt(realmGet$vote_score());
        parcel.writeSerializable(realmGet$date());
        parcel.writeString(realmGet$share_url());
        parcel.writeString(realmGet$share_image());
        parcel.writeString(realmGet$youtube());
        parcel.writeInt(realmGet$voted());
        parcel.writeFloat(realmGet$ratio());
        parcel.writeInt(realmGet$in_queue() ? 1 : 0);
        parcel.writeInt(this.isExpand ? 1 : 0);
        if (!realmGet$is_favorite()) {
            i2 = 0;
        }
        parcel.writeInt(i2);
        parcel.writeInt(this.maxHeight);
        parcel.writeInt(realmGet$pictures().size());
        Iterator it = realmGet$pictures().iterator();
        while (it.hasNext()) {
            parcel.writeParcelable((Picture) it.next(), 0);
        }
        parcel.writeInt(realmGet$comments().size());
        Iterator it2 = realmGet$comments().iterator();
        while (it2.hasNext()) {
            parcel.writeParcelable((Comment) it2.next(), 0);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }
}
