.class public Lpl/jbzd/app/model/User;
.super Lio/realm/u;
.source "User.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lio/realm/x;
.implements Lpl/jbzd/app/view/feed/model/BaseFeedModel;
.implements Lpl/jbzd/core/api/BaseApiModel;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public account_since:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "uacc_account_since"
    .end annotation
.end field

.field public avatar:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "uacc_avatar"
    .end annotation
.end field

.field public comments_count:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "comments_count"
    .end annotation
.end field

.field public comments_marked_count:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "comments_marked_count"
    .end annotation
.end field

.field public followers:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "observators"
    .end annotation
.end field

.field public following:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "observings"
    .end annotation
.end field

.field public id:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "uacc_id"
    .end annotation
.end field

.field public is_following:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_observed"
    .end annotation
.end field

.field public media_count:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "media_count"
    .end annotation
.end field

.field public media_main_count:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "media_main_count"
    .end annotation
.end field

.field public token:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "uacc_token"
    .end annotation
.end field

.field public username:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "uacc_username"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 203
    new-instance v0, Lpl/jbzd/app/model/User$1;

    invoke-direct {v0}, Lpl/jbzd/app/model/User$1;-><init>()V

    sput-object v0, Lpl/jbzd/app/model/User;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lio/realm/u;-><init>()V

    instance-of v0, p0, Lio/realm/internal/l;

    if-eqz v0, :cond_0

    check-cast p0, Lio/realm/internal/l;

    invoke-interface {p0}, Lio/realm/internal/l;->a()V

    .line 57
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 166
    invoke-direct {p0}, Lio/realm/u;-><init>()V

    instance-of v0, p0, Lio/realm/internal/l;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/l;

    invoke-interface {v0}, Lio/realm/internal/l;->a()V

    .line 167
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/User;->realmSet$id(I)V

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/User;->realmSet$username(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/User;->realmSet$avatar(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpl/jbzd/app/model/User;->token:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/User;->realmSet$media_count(I)V

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/User;->realmSet$media_main_count(I)V

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/User;->realmSet$comments_count(I)V

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/User;->realmSet$comments_marked_count(I)V

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/User;->realmSet$followers(I)V

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/User;->realmSet$following(I)V

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/User;->realmSet$is_following(Z)V

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/User;->realmSet$account_since(Ljava/lang/String;)V

    .line 179
    return-void

    .line 177
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public getAccount_since()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lpl/jbzd/app/model/User;->realmGet$account_since()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lpl/jbzd/app/model/User;->realmGet$avatar()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getComments_count()I
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lpl/jbzd/app/model/User;->realmGet$comments_count()I

    move-result v0

    return v0
.end method

.method public getComments_marked_count()I
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lpl/jbzd/app/model/User;->realmGet$comments_marked_count()I

    move-result v0

    return v0
.end method

.method public getFollowers()I
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lpl/jbzd/app/model/User;->realmGet$followers()I

    move-result v0

    return v0
.end method

.method public getFollowing()I
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lpl/jbzd/app/model/User;->realmGet$following()I

    move-result v0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lpl/jbzd/app/model/User;->realmGet$id()I

    move-result v0

    return v0
.end method

.method public getMedia_count()I
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lpl/jbzd/app/model/User;->realmGet$media_count()I

    move-result v0

    return v0
.end method

.method public getMedia_main_count()I
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lpl/jbzd/app/model/User;->realmGet$media_main_count()I

    move-result v0

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lpl/jbzd/app/model/User;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lpl/jbzd/app/model/User;->realmGet$username()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public is_following()Z
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lpl/jbzd/app/model/User;->realmGet$is_following()Z

    move-result v0

    return v0
.end method

.method public realmGet$account_since()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lpl/jbzd/app/model/User;->account_since:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$avatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lpl/jbzd/app/model/User;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$comments_count()I
    .locals 1

    iget v0, p0, Lpl/jbzd/app/model/User;->comments_count:I

    return v0
.end method

.method public realmGet$comments_marked_count()I
    .locals 1

    iget v0, p0, Lpl/jbzd/app/model/User;->comments_marked_count:I

    return v0
.end method

.method public realmGet$followers()I
    .locals 1

    iget v0, p0, Lpl/jbzd/app/model/User;->followers:I

    return v0
.end method

.method public realmGet$following()I
    .locals 1

    iget v0, p0, Lpl/jbzd/app/model/User;->following:I

    return v0
.end method

.method public realmGet$id()I
    .locals 1

    iget v0, p0, Lpl/jbzd/app/model/User;->id:I

    return v0
.end method

.method public realmGet$is_following()Z
    .locals 1

    iget-boolean v0, p0, Lpl/jbzd/app/model/User;->is_following:Z

    return v0
.end method

.method public realmGet$media_count()I
    .locals 1

    iget v0, p0, Lpl/jbzd/app/model/User;->media_count:I

    return v0
.end method

.method public realmGet$media_main_count()I
    .locals 1

    iget v0, p0, Lpl/jbzd/app/model/User;->media_main_count:I

    return v0
.end method

.method public realmGet$username()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lpl/jbzd/app/model/User;->username:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$account_since(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpl/jbzd/app/model/User;->account_since:Ljava/lang/String;

    return-void
.end method

.method public realmSet$avatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpl/jbzd/app/model/User;->avatar:Ljava/lang/String;

    return-void
.end method

.method public realmSet$comments_count(I)V
    .locals 0

    iput p1, p0, Lpl/jbzd/app/model/User;->comments_count:I

    return-void
.end method

.method public realmSet$comments_marked_count(I)V
    .locals 0

    iput p1, p0, Lpl/jbzd/app/model/User;->comments_marked_count:I

    return-void
.end method

.method public realmSet$followers(I)V
    .locals 0

    iput p1, p0, Lpl/jbzd/app/model/User;->followers:I

    return-void
.end method

.method public realmSet$following(I)V
    .locals 0

    iput p1, p0, Lpl/jbzd/app/model/User;->following:I

    return-void
.end method

.method public realmSet$id(I)V
    .locals 0

    iput p1, p0, Lpl/jbzd/app/model/User;->id:I

    return-void
.end method

.method public realmSet$is_following(Z)V
    .locals 0

    iput-boolean p1, p0, Lpl/jbzd/app/model/User;->is_following:Z

    return-void
.end method

.method public realmSet$media_count(I)V
    .locals 0

    iput p1, p0, Lpl/jbzd/app/model/User;->media_count:I

    return-void
.end method

.method public realmSet$media_main_count(I)V
    .locals 0

    iput p1, p0, Lpl/jbzd/app/model/User;->media_main_count:I

    return-void
.end method

.method public realmSet$username(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpl/jbzd/app/model/User;->username:Ljava/lang/String;

    return-void
.end method

.method public setAccount_since(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/User;->realmSet$account_since(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/User;->realmSet$avatar(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public setComments_count(I)V
    .locals 0

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/User;->realmSet$comments_count(I)V

    .line 123
    return-void
.end method

.method public setComments_marked_count(I)V
    .locals 0

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/User;->realmSet$comments_marked_count(I)V

    .line 131
    return-void
.end method

.method public setFollowers(I)V
    .locals 0

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/User;->realmSet$followers(I)V

    .line 139
    return-void
.end method

.method public setFollowing(I)V
    .locals 0

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/User;->realmSet$following(I)V

    .line 147
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/User;->realmSet$id(I)V

    .line 65
    return-void
.end method

.method public setIs_following(Z)V
    .locals 0

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/User;->realmSet$is_following(Z)V

    .line 155
    return-void
.end method

.method public setMedia_count(I)V
    .locals 0

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/User;->realmSet$media_count(I)V

    .line 107
    return-void
.end method

.method public setMedia_main_count(I)V
    .locals 0

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/User;->realmSet$media_main_count(I)V

    .line 115
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lpl/jbzd/app/model/User;->token:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/User;->realmSet$username(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-class v0, Lpl/jbzd/app/model/User;

    invoke-static {p0, v0}, Lpl/jbzd/api/util/ApiUtils;->toString(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lpl/jbzd/app/model/User;->realmGet$id()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    invoke-virtual {p0}, Lpl/jbzd/app/model/User;->realmGet$username()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lpl/jbzd/app/model/User;->realmGet$avatar()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lpl/jbzd/app/model/User;->token:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lpl/jbzd/app/model/User;->realmGet$media_count()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    invoke-virtual {p0}, Lpl/jbzd/app/model/User;->realmGet$media_main_count()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    invoke-virtual {p0}, Lpl/jbzd/app/model/User;->realmGet$comments_count()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    invoke-virtual {p0}, Lpl/jbzd/app/model/User;->realmGet$comments_marked_count()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    invoke-virtual {p0}, Lpl/jbzd/app/model/User;->realmGet$followers()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    invoke-virtual {p0}, Lpl/jbzd/app/model/User;->realmGet$following()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    invoke-virtual {p0}, Lpl/jbzd/app/model/User;->realmGet$is_following()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    invoke-virtual {p0}, Lpl/jbzd/app/model/User;->realmGet$account_since()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    return-void

    .line 194
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
