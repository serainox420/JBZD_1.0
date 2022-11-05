package pl.jbzd.app.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import io.realm.c;
import io.realm.internal.l;
import io.realm.q;
import io.realm.u;
import java.util.Date;
import java.util.Iterator;
import pl.jbzd.api.util.ApiUtils;
import pl.jbzd.app.view.feed.model.BaseFeedModel;
@JsonIgnoreProperties(ignoreUnknown = true)
/* loaded from: classes.dex */
public class Comment extends u implements Parcelable, c, ApiModel, BaseFeedModel {
    public static final Parcelable.Creator CREATOR = new Parcelable.Creator() { // from class: pl.jbzd.app.model.Comment.1
        @Override // android.os.Parcelable.Creator
        public Comment createFromParcel(Parcel parcel) {
            return new Comment(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public Comment[] newArray(int i) {
            return new Comment[i];
        }
    };
    @JsonProperty("comment")
    public String comment;
    @JsonProperty("created_at")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", shape = JsonFormat.Shape.STRING, timezone = "GMT+2")
    public Date created_at;
    @JsonProperty("id")
    public int id;
    @JsonProperty("parent_id")
    public int media_id;
    @JsonProperty("minus")
    public int minus;
    @JsonProperty("parent_comment_id")
    public int parent_id;
    @JsonProperty("plus")
    public int plus;
    public q<Comment> replies;
    @JsonProperty("reports")
    public int reports;
    public boolean showReplies;
    @JsonProperty("user")
    public User user;
    public int voted;

    public String realmGet$comment() {
        return this.comment;
    }

    public Date realmGet$created_at() {
        return this.created_at;
    }

    public int realmGet$id() {
        return this.id;
    }

    public int realmGet$media_id() {
        return this.media_id;
    }

    public int realmGet$minus() {
        return this.minus;
    }

    public int realmGet$parent_id() {
        return this.parent_id;
    }

    public int realmGet$plus() {
        return this.plus;
    }

    public q realmGet$replies() {
        return this.replies;
    }

    public int realmGet$reports() {
        return this.reports;
    }

    public User realmGet$user() {
        return this.user;
    }

    public int realmGet$voted() {
        return this.voted;
    }

    public void realmSet$comment(String str) {
        this.comment = str;
    }

    public void realmSet$created_at(Date date) {
        this.created_at = date;
    }

    public void realmSet$id(int i) {
        this.id = i;
    }

    public void realmSet$media_id(int i) {
        this.media_id = i;
    }

    public void realmSet$minus(int i) {
        this.minus = i;
    }

    public void realmSet$parent_id(int i) {
        this.parent_id = i;
    }

    public void realmSet$plus(int i) {
        this.plus = i;
    }

    public void realmSet$replies(q qVar) {
        this.replies = qVar;
    }

    public void realmSet$reports(int i) {
        this.reports = i;
    }

    public void realmSet$user(User user) {
        this.user = user;
    }

    public void realmSet$voted(int i) {
        this.voted = i;
    }

    @Override // pl.jbzd.core.api.BaseApiModel
    public String toString() {
        return ApiUtils.toString(this, Comment.class);
    }

    public Comment() {
        if (this instanceof l) {
            ((l) this).a();
        }
        realmSet$voted(0);
        realmSet$voted(0);
        realmSet$replies(new q());
    }

    public int getId() {
        return realmGet$id();
    }

    public void setId(int i) {
        realmSet$id(i);
    }

    public int getMedia_id() {
        return realmGet$media_id();
    }

    public void setMedia_id(int i) {
        realmSet$media_id(i);
    }

    public int getParent_id() {
        return realmGet$parent_id();
    }

    public void setParent_id(int i) {
        realmSet$parent_id(i);
    }

    public String getComment() {
        return realmGet$comment();
    }

    public void setComment(String str) {
        realmSet$comment(str);
    }

    public int getPlus() {
        return realmGet$plus();
    }

    public void setPlus(int i) {
        realmSet$plus(i);
    }

    public int getMinus() {
        return realmGet$minus();
    }

    public void setMinus(int i) {
        realmSet$minus(i);
    }

    public int getReports() {
        return realmGet$reports();
    }

    public void setReports(int i) {
        realmSet$reports(i);
    }

    public Date getCreated_at() {
        return realmGet$created_at();
    }

    public void setCreated_at(Date date) {
        realmSet$created_at(date);
    }

    public User getUser() {
        return realmGet$user();
    }

    public void setUser(User user) {
        realmSet$user(user);
    }

    public int getVoted() {
        return realmGet$voted();
    }

    public void setVoted(int i) {
        realmSet$voted(i);
    }

    public q<Comment> getReplies() {
        return realmGet$replies();
    }

    public void setReplies(q<Comment> qVar) {
        realmSet$replies(qVar);
    }

    public boolean isShowReplies() {
        return this.showReplies;
    }

    public void setShowReplies(boolean z) {
        this.showReplies = z;
    }

    public Comment(Parcel parcel) {
        if (this instanceof l) {
            ((l) this).a();
        }
        realmSet$voted(0);
        realmSet$id(parcel.readInt());
        realmSet$media_id(parcel.readInt());
        realmSet$parent_id(parcel.readInt());
        realmSet$comment(parcel.readString());
        realmSet$plus(parcel.readInt());
        realmSet$minus(parcel.readInt());
        realmSet$reports(parcel.readInt());
        realmSet$created_at((Date) parcel.readSerializable());
        realmSet$user((User) parcel.readParcelable(User.class.getClassLoader()));
        realmSet$voted(parcel.readInt());
        this.showReplies = parcel.readInt() > 0;
        realmSet$replies(new q());
        int readInt = parcel.readInt();
        for (int i = 0; i < readInt; i++) {
            realmGet$replies().a((q) ((Comment) parcel.readParcelable(Comment.class.getClassLoader())));
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(realmGet$id());
        parcel.writeInt(realmGet$media_id());
        parcel.writeInt(realmGet$parent_id());
        parcel.writeString(realmGet$comment());
        parcel.writeInt(realmGet$plus());
        parcel.writeInt(realmGet$minus());
        parcel.writeInt(realmGet$reports());
        parcel.writeSerializable(realmGet$created_at());
        parcel.writeParcelable(realmGet$user(), 0);
        parcel.writeInt(realmGet$voted());
        parcel.writeInt(this.showReplies ? 1 : 0);
        parcel.writeInt(realmGet$replies().size());
        Iterator it = realmGet$replies().iterator();
        while (it.hasNext()) {
            parcel.writeParcelable((Comment) it.next(), 0);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }
}
