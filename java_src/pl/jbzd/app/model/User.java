package pl.jbzd.app.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import io.realm.internal.l;
import io.realm.u;
import io.realm.x;
import pl.jbzd.api.util.ApiUtils;
import pl.jbzd.app.view.feed.model.BaseFeedModel;
import pl.jbzd.core.api.BaseApiModel;
@JsonIgnoreProperties(ignoreUnknown = true)
/* loaded from: classes.dex */
public class User extends u implements Parcelable, x, BaseFeedModel, BaseApiModel {
    public static final Parcelable.Creator CREATOR = new Parcelable.Creator() { // from class: pl.jbzd.app.model.User.1
        @Override // android.os.Parcelable.Creator
        public User createFromParcel(Parcel parcel) {
            return new User(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public User[] newArray(int i) {
            return new User[i];
        }
    };
    @JsonProperty("uacc_account_since")
    public String account_since;
    @JsonProperty("uacc_avatar")
    public String avatar;
    @JsonProperty("comments_count")
    public int comments_count;
    @JsonProperty("comments_marked_count")
    public int comments_marked_count;
    @JsonProperty("observators")
    public int followers;
    @JsonProperty("observings")
    public int following;
    @JsonProperty("uacc_id")
    public int id;
    @JsonProperty("is_observed")
    public boolean is_following;
    @JsonProperty("media_count")
    public int media_count;
    @JsonProperty("media_main_count")
    public int media_main_count;
    @JsonProperty("uacc_token")
    public String token;
    @JsonProperty("uacc_username")
    public String username;

    public String realmGet$account_since() {
        return this.account_since;
    }

    public String realmGet$avatar() {
        return this.avatar;
    }

    public int realmGet$comments_count() {
        return this.comments_count;
    }

    public int realmGet$comments_marked_count() {
        return this.comments_marked_count;
    }

    public int realmGet$followers() {
        return this.followers;
    }

    public int realmGet$following() {
        return this.following;
    }

    public int realmGet$id() {
        return this.id;
    }

    public boolean realmGet$is_following() {
        return this.is_following;
    }

    public int realmGet$media_count() {
        return this.media_count;
    }

    public int realmGet$media_main_count() {
        return this.media_main_count;
    }

    public String realmGet$username() {
        return this.username;
    }

    public void realmSet$account_since(String str) {
        this.account_since = str;
    }

    public void realmSet$avatar(String str) {
        this.avatar = str;
    }

    public void realmSet$comments_count(int i) {
        this.comments_count = i;
    }

    public void realmSet$comments_marked_count(int i) {
        this.comments_marked_count = i;
    }

    public void realmSet$followers(int i) {
        this.followers = i;
    }

    public void realmSet$following(int i) {
        this.following = i;
    }

    public void realmSet$id(int i) {
        this.id = i;
    }

    public void realmSet$is_following(boolean z) {
        this.is_following = z;
    }

    public void realmSet$media_count(int i) {
        this.media_count = i;
    }

    public void realmSet$media_main_count(int i) {
        this.media_main_count = i;
    }

    public void realmSet$username(String str) {
        this.username = str;
    }

    @Override // pl.jbzd.core.api.BaseApiModel
    public String toString() {
        return ApiUtils.toString(this, User.class);
    }

    public User() {
        if (this instanceof l) {
            ((l) this).a();
        }
    }

    public int getId() {
        return realmGet$id();
    }

    public void setId(int i) {
        realmSet$id(i);
    }

    public String getUsername() {
        return realmGet$username();
    }

    public void setUsername(String str) {
        realmSet$username(str);
    }

    public String getAvatar() {
        return realmGet$avatar();
    }

    public void setAvatar(String str) {
        realmSet$avatar(str);
    }

    public String getToken() {
        return this.token;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public int getMedia_count() {
        return realmGet$media_count();
    }

    public void setMedia_count(int i) {
        realmSet$media_count(i);
    }

    public int getMedia_main_count() {
        return realmGet$media_main_count();
    }

    public void setMedia_main_count(int i) {
        realmSet$media_main_count(i);
    }

    public int getComments_count() {
        return realmGet$comments_count();
    }

    public void setComments_count(int i) {
        realmSet$comments_count(i);
    }

    public int getComments_marked_count() {
        return realmGet$comments_marked_count();
    }

    public void setComments_marked_count(int i) {
        realmSet$comments_marked_count(i);
    }

    public int getFollowers() {
        return realmGet$followers();
    }

    public void setFollowers(int i) {
        realmSet$followers(i);
    }

    public int getFollowing() {
        return realmGet$following();
    }

    public void setFollowing(int i) {
        realmSet$following(i);
    }

    public boolean is_following() {
        return realmGet$is_following();
    }

    public void setIs_following(boolean z) {
        realmSet$is_following(z);
    }

    public String getAccount_since() {
        return realmGet$account_since();
    }

    public void setAccount_since(String str) {
        realmSet$account_since(str);
    }

    public User(Parcel parcel) {
        if (this instanceof l) {
            ((l) this).a();
        }
        realmSet$id(parcel.readInt());
        realmSet$username(parcel.readString());
        realmSet$avatar(parcel.readString());
        this.token = parcel.readString();
        realmSet$media_count(parcel.readInt());
        realmSet$media_main_count(parcel.readInt());
        realmSet$comments_count(parcel.readInt());
        realmSet$comments_marked_count(parcel.readInt());
        realmSet$followers(parcel.readInt());
        realmSet$following(parcel.readInt());
        realmSet$is_following(parcel.readInt() > 0);
        realmSet$account_since(parcel.readString());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(realmGet$id());
        parcel.writeString(realmGet$username());
        parcel.writeString(realmGet$avatar());
        parcel.writeString(this.token);
        parcel.writeInt(realmGet$media_count());
        parcel.writeInt(realmGet$media_main_count());
        parcel.writeInt(realmGet$comments_count());
        parcel.writeInt(realmGet$comments_marked_count());
        parcel.writeInt(realmGet$followers());
        parcel.writeInt(realmGet$following());
        parcel.writeInt(realmGet$is_following() ? 1 : 0);
        parcel.writeString(realmGet$account_since());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }
}
