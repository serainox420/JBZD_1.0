package pl.jbzd.app.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import io.realm.internal.l;
import io.realm.j;
import io.realm.u;
import java.util.Date;
import pl.jbzd.api.util.ApiUtils;
import pl.jbzd.core.api.BaseApiModel;
@JsonIgnoreProperties(ignoreUnknown = true)
/* loaded from: classes.dex */
public class Picture extends u implements Parcelable, j, BaseApiModel {
    public static final Parcelable.Creator CREATOR = new Parcelable.Creator() { // from class: pl.jbzd.app.model.Picture.1
        @Override // android.os.Parcelable.Creator
        public Picture createFromParcel(Parcel parcel) {
            return new Picture(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public Picture[] newArray(int i) {
            return new Picture[i];
        }
    };
    public static final float MAX_IMAGE_SCALE = 3.0f;
    @JsonProperty("media_pictures_added")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", shape = JsonFormat.Shape.STRING)
    public Date added;
    @JsonProperty("media_pictures_height")
    public int height;
    @JsonProperty("media_pictures_id")
    public int id;
    @JsonProperty("media_pictures_image")
    public String image;
    @JsonProperty("media_pictures_mp4")
    public String mp4;
    @JsonProperty("media_share_image")
    public String share_image;
    @JsonProperty("type")
    public String type;
    @JsonProperty("media_pictures_width")
    public int width;
    public String youtube;

    public Date realmGet$added() {
        return this.added;
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

    public String realmGet$mp4() {
        return this.mp4;
    }

    public String realmGet$share_image() {
        return this.share_image;
    }

    public String realmGet$type() {
        return this.type;
    }

    public int realmGet$width() {
        return this.width;
    }

    public String realmGet$youtube() {
        return this.youtube;
    }

    public void realmSet$added(Date date) {
        this.added = date;
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

    public void realmSet$mp4(String str) {
        this.mp4 = str;
    }

    public void realmSet$share_image(String str) {
        this.share_image = str;
    }

    public void realmSet$type(String str) {
        this.type = str;
    }

    public void realmSet$width(int i) {
        this.width = i;
    }

    public void realmSet$youtube(String str) {
        this.youtube = str;
    }

    @Override // pl.jbzd.core.api.BaseApiModel
    public String toString() {
        return ApiUtils.toString(this, Picture.class);
    }

    public int getId() {
        return realmGet$id();
    }

    public void setId(int i) {
        realmSet$id(i);
    }

    public String getImage() {
        return realmGet$image();
    }

    public void setImage(String str) {
        realmSet$image(str);
    }

    public String getMp4() {
        return realmGet$mp4();
    }

    public void setMp4(String str) {
        realmSet$mp4(str);
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

    public Date getAdded() {
        return realmGet$added();
    }

    public void setAdded(Date date) {
        realmSet$added(date);
    }

    public String getType() {
        return realmGet$type();
    }

    public void setType(String str) {
        realmSet$type(str);
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

    public Picture() {
        if (this instanceof l) {
            ((l) this).a();
        }
    }

    public Picture(Parcel parcel) {
        if (this instanceof l) {
            ((l) this).a();
        }
        realmSet$id(parcel.readInt());
        realmSet$image(parcel.readString());
        realmSet$mp4(parcel.readString());
        realmSet$width(parcel.readInt());
        realmSet$height(parcel.readInt());
        realmSet$added((Date) parcel.readSerializable());
        realmSet$type(parcel.readString());
        realmSet$share_image(parcel.readString());
        realmSet$youtube(parcel.readString());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(realmGet$id());
        parcel.writeString(realmGet$image());
        parcel.writeString(realmGet$mp4());
        parcel.writeInt(realmGet$width());
        parcel.writeInt(realmGet$height());
        parcel.writeSerializable(realmGet$added());
        parcel.writeString(realmGet$type());
        parcel.writeString(realmGet$share_image());
        parcel.writeString(realmGet$youtube());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }
}
