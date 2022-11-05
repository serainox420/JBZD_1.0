.class public Lpl/jbzd/app/model/BaseMedia;
.super Lio/realm/u;
.source "BaseMedia.java"

# interfaces
.implements Lio/realm/a;
.implements Lpl/jbzd/app/view/feed/model/BaseFeedModel;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public comments:Lio/realm/q;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "comments"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lpl/jbzd/app/model/realm/JacksonDeserializerRealmListComment;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/q",
            "<",
            "Lpl/jbzd/app/model/Comment;",
            ">;"
        }
    .end annotation
.end field

.field public date:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonFormat;
        pattern = "yyyy-MM-dd H:m:s"
        shape = .enum Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->STRING:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
        timezone = "CET"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "date"
    .end annotation
.end field

.field public height:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "media_image_height"
    .end annotation
.end field

.field public id:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "media_id"
    .end annotation
.end field

.field public image:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "media_image"
    .end annotation
.end field

.field public in_queue:Z

.field public isExpand:Z

.field public is_favorite:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_favorite"
    .end annotation
.end field

.field public maxHeight:I

.field public media_added:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonFormat;
        pattern = "yyyy-MM-dd H:m:s"
        shape = .enum Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->STRING:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
        timezone = "CET"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "media_added"
    .end annotation
.end field

.field public movie:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "media_movie"
    .end annotation
.end field

.field public pictures:Lio/realm/q;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "pictures"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lpl/jbzd/app/model/realm/JacksonDeserializerRealmListPicture;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/q",
            "<",
            "Lpl/jbzd/app/model/Picture;",
            ">;"
        }
    .end annotation
.end field

.field public pictures_counter:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "media_pictures"
    .end annotation
.end field

.field public ratio:F

.field public share_image:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "media_share_image"
    .end annotation
.end field

.field public share_url:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "media_share_url"
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "media_title"
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "media_type"
    .end annotation
.end field

.field public url:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "media_url"
    .end annotation
.end field

.field public user_id:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "users_id"
    .end annotation
.end field

.field public vote_score:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "media_vote_score"
    .end annotation
.end field

.field public voted:I

.field public width:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "media_image_width"
    .end annotation
.end field

.field public youtube:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "media_youtube_vid"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 401
    new-instance v0, Lpl/jbzd/app/model/BaseMedia$1;

    invoke-direct {v0}, Lpl/jbzd/app/model/BaseMedia$1;-><init>()V

    sput-object v0, Lpl/jbzd/app/model/BaseMedia;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Lio/realm/u;-><init>()V

    instance-of v0, p0, Lio/realm/internal/l;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/l;

    invoke-interface {v0}, Lio/realm/internal/l;->a()V

    .line 74
    :cond_0
    invoke-virtual {p0, v1}, Lpl/jbzd/app/model/BaseMedia;->realmSet$voted(I)V

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/BaseMedia;->realmSet$ratio(F)V

    .line 76
    invoke-virtual {p0, v1}, Lpl/jbzd/app/model/BaseMedia;->realmSet$in_queue(Z)V

    .line 77
    iput-boolean v1, p0, Lpl/jbzd/app/model/BaseMedia;->isExpand:Z

    .line 91
    new-instance v0, Lio/realm/q;

    invoke-direct {v0}, Lio/realm/q;-><init>()V

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/BaseMedia;->realmSet$pictures(Lio/realm/q;)V

    .line 92
    invoke-virtual {p0, v1}, Lpl/jbzd/app/model/BaseMedia;->realmSet$in_queue(Z)V

    .line 93
    iput-boolean v1, p0, Lpl/jbzd/app/model/BaseMedia;->isExpand:Z

    .line 94
    invoke-virtual {p0, v1}, Lpl/jbzd/app/model/BaseMedia;->realmSet$voted(I)V

    .line 95
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Lio/realm/u;-><init>()V

    instance-of v0, p0, Lio/realm/internal/l;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/l;

    invoke-interface {v0}, Lio/realm/internal/l;->a()V

    .line 74
    :cond_0
    invoke-virtual {p0, v1}, Lpl/jbzd/app/model/BaseMedia;->realmSet$voted(I)V

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/BaseMedia;->realmSet$ratio(F)V

    .line 76
    invoke-virtual {p0, v1}, Lpl/jbzd/app/model/BaseMedia;->realmSet$in_queue(Z)V

    .line 77
    iput-boolean v1, p0, Lpl/jbzd/app/model/BaseMedia;->isExpand:Z

    .line 123
    add-int/lit8 v0, p2, 0x24

    invoke-virtual {p0, p1, v0}, Lpl/jbzd/app/model/BaseMedia;->setSize(II)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 319
    invoke-direct {p0}, Lio/realm/u;-><init>()V

    instance-of v0, p0, Lio/realm/internal/l;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/l;

    invoke-interface {v0}, Lio/realm/internal/l;->a()V

    .line 74
    :cond_0
    invoke-virtual {p0, v2}, Lpl/jbzd/app/model/BaseMedia;->realmSet$voted(I)V

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/BaseMedia;->realmSet$ratio(F)V

    .line 76
    invoke-virtual {p0, v2}, Lpl/jbzd/app/model/BaseMedia;->realmSet$in_queue(Z)V

    .line 77
    iput-boolean v2, p0, Lpl/jbzd/app/model/BaseMedia;->isExpand:Z

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/BaseMedia;->realmSet$id(I)V

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/BaseMedia;->realmSet$user_id(I)V

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/BaseMedia;->realmSet$type(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/BaseMedia;->realmSet$image(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/BaseMedia;->realmSet$movie(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/BaseMedia;->realmSet$width(I)V

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/BaseMedia;->realmSet$height(I)V

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/BaseMedia;->realmSet$pictures_counter(I)V

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/BaseMedia;->realmSet$media_added(Ljava/util/Date;)V

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/BaseMedia;->realmSet$title(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/BaseMedia;->realmSet$url(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/BaseMedia;->realmSet$vote_score(I)V

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/BaseMedia;->realmSet$date(Ljava/util/Date;)V

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/BaseMedia;->realmSet$share_url(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/BaseMedia;->realmSet$share_image(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/BaseMedia;->realmSet$youtube(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/BaseMedia;->realmSet$voted(I)V

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/BaseMedia;->realmSet$ratio(F)V

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/BaseMedia;->realmSet$in_queue(Z)V

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lpl/jbzd/app/model/BaseMedia;->isExpand:Z

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_3

    :goto_2
    invoke-virtual {p0, v1}, Lpl/jbzd/app/model/BaseMedia;->realmSet$is_favorite(Z)V

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lpl/jbzd/app/model/BaseMedia;->maxHeight:I

    .line 343
    new-instance v0, Lio/realm/q;

    invoke-direct {v0}, Lio/realm/q;-><init>()V

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/BaseMedia;->realmSet$pictures(Lio/realm/q;)V

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move v1, v2

    .line 346
    :goto_3
    if-ge v1, v3, :cond_4

    .line 347
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$pictures()Lio/realm/q;

    move-result-object v4

    const-class v0, Lpl/jbzd/app/model/Picture;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Picture;

    invoke-virtual {v4, v0}, Lio/realm/q;->a(Lio/realm/t;)Z

    .line 346
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_1
    move v0, v2

    .line 338
    goto :goto_0

    :cond_2
    move v0, v2

    .line 339
    goto :goto_1

    :cond_3
    move v1, v2

    .line 340
    goto :goto_2

    .line 350
    :cond_4
    new-instance v0, Lio/realm/q;

    invoke-direct {v0}, Lio/realm/q;-><init>()V

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/BaseMedia;->realmSet$comments(Lio/realm/q;)V

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 353
    :goto_4
    if-ge v2, v1, :cond_5

    .line 354
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$comments()Lio/realm/q;

    move-result-object v3

    const-class v0, Lpl/jbzd/app/model/Comment;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Comment;

    invoke-virtual {v3, v0}, Lio/realm/q;->a(Lio/realm/t;)Z

    .line 353
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 356
    :cond_5
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "media_type"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "media_image_width"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "media_image_height"
        .end annotation
    .end param
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Lio/realm/u;-><init>()V

    instance-of v0, p0, Lio/realm/internal/l;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/l;

    invoke-interface {v0}, Lio/realm/internal/l;->a()V

    .line 74
    :cond_0
    invoke-virtual {p0, v1}, Lpl/jbzd/app/model/BaseMedia;->realmSet$voted(I)V

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/BaseMedia;->realmSet$ratio(F)V

    .line 76
    invoke-virtual {p0, v1}, Lpl/jbzd/app/model/BaseMedia;->realmSet$in_queue(Z)V

    .line 77
    iput-boolean v1, p0, Lpl/jbzd/app/model/BaseMedia;->isExpand:Z

    .line 99
    new-instance v0, Lio/realm/q;

    invoke-direct {v0}, Lio/realm/q;-><init>()V

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/BaseMedia;->realmSet$pictures(Lio/realm/q;)V

    .line 100
    invoke-virtual {p0, v1}, Lpl/jbzd/app/model/BaseMedia;->realmSet$in_queue(Z)V

    .line 101
    iput-boolean v1, p0, Lpl/jbzd/app/model/BaseMedia;->isExpand:Z

    .line 102
    invoke-virtual {p0, v1}, Lpl/jbzd/app/model/BaseMedia;->realmSet$voted(I)V

    .line 104
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/BaseMedia;->realmSet$type(Ljava/lang/String;)V

    .line 105
    sget-object v0, Lpl/jbzd/app/view/feed/FeedViewType;->GIF:Lpl/jbzd/app/view/feed/FeedViewType;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/FeedViewType;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, p3, 0x24

    invoke-virtual {p0, p2, v0}, Lpl/jbzd/app/model/BaseMedia;->setSize(II)V

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-virtual {p0, p2, p3}, Lpl/jbzd/app/model/BaseMedia;->setSize(II)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x0

    return v0
.end method

.method public getComments()Lio/realm/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/q",
            "<",
            "Lpl/jbzd/app/model/Comment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$comments()Lio/realm/q;

    move-result-object v0

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$date()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$height()I

    move-result v0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$id()I

    move-result v0

    return v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$image()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lpl/jbzd/app/model/BaseMedia;->maxHeight:I

    return v0
.end method

.method public getMedia_added()Ljava/util/Date;
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$media_added()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMovie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$movie()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPictures()Lio/realm/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/q",
            "<",
            "Lpl/jbzd/app/model/Picture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$pictures()Lio/realm/q;

    move-result-object v0

    return-object v0
.end method

.method public getPictures_counter()I
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$pictures_counter()I

    move-result v0

    return v0
.end method

.method public getRatio()F
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$ratio()F

    move-result v0

    return v0
.end method

.method public getShare_image()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$share_image()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShare_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$share_url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$title()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$type()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUser_id()I
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$user_id()I

    move-result v0

    return v0
.end method

.method public getVote_score()I
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$vote_score()I

    move-result v0

    return v0
.end method

.method public getVoted()I
    .locals 1

    .prologue
    .line 279
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$voted()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$width()I

    move-result v0

    return v0
.end method

.method public getYoutube()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$youtube()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isExpand()Z
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lpl/jbzd/app/model/BaseMedia;->isExpand:Z

    return v0
.end method

.method public isIn_queue()Z
    .locals 1

    .prologue
    .line 271
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$in_queue()Z

    move-result v0

    return v0
.end method

.method public is_favorite()Z
    .locals 1

    .prologue
    .line 311
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$is_favorite()Z

    move-result v0

    return v0
.end method

.method public realmGet$comments()Lio/realm/q;
    .locals 1

    iget-object v0, p0, Lpl/jbzd/app/model/BaseMedia;->comments:Lio/realm/q;

    return-object v0
.end method

.method public realmGet$date()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lpl/jbzd/app/model/BaseMedia;->date:Ljava/util/Date;

    return-object v0
.end method

.method public realmGet$height()I
    .locals 1

    iget v0, p0, Lpl/jbzd/app/model/BaseMedia;->height:I

    return v0
.end method

.method public realmGet$id()I
    .locals 1

    iget v0, p0, Lpl/jbzd/app/model/BaseMedia;->id:I

    return v0
.end method

.method public realmGet$image()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lpl/jbzd/app/model/BaseMedia;->image:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$in_queue()Z
    .locals 1

    iget-boolean v0, p0, Lpl/jbzd/app/model/BaseMedia;->in_queue:Z

    return v0
.end method

.method public realmGet$is_favorite()Z
    .locals 1

    iget-boolean v0, p0, Lpl/jbzd/app/model/BaseMedia;->is_favorite:Z

    return v0
.end method

.method public realmGet$media_added()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lpl/jbzd/app/model/BaseMedia;->media_added:Ljava/util/Date;

    return-object v0
.end method

.method public realmGet$movie()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lpl/jbzd/app/model/BaseMedia;->movie:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$pictures()Lio/realm/q;
    .locals 1

    iget-object v0, p0, Lpl/jbzd/app/model/BaseMedia;->pictures:Lio/realm/q;

    return-object v0
.end method

.method public realmGet$pictures_counter()I
    .locals 1

    iget v0, p0, Lpl/jbzd/app/model/BaseMedia;->pictures_counter:I

    return v0
.end method

.method public realmGet$ratio()F
    .locals 1

    iget v0, p0, Lpl/jbzd/app/model/BaseMedia;->ratio:F

    return v0
.end method

.method public realmGet$share_image()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lpl/jbzd/app/model/BaseMedia;->share_image:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$share_url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lpl/jbzd/app/model/BaseMedia;->share_url:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$title()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lpl/jbzd/app/model/BaseMedia;->title:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$type()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lpl/jbzd/app/model/BaseMedia;->type:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lpl/jbzd/app/model/BaseMedia;->url:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$user_id()I
    .locals 1

    iget v0, p0, Lpl/jbzd/app/model/BaseMedia;->user_id:I

    return v0
.end method

.method public realmGet$vote_score()I
    .locals 1

    iget v0, p0, Lpl/jbzd/app/model/BaseMedia;->vote_score:I

    return v0
.end method

.method public realmGet$voted()I
    .locals 1

    iget v0, p0, Lpl/jbzd/app/model/BaseMedia;->voted:I

    return v0
.end method

.method public realmGet$width()I
    .locals 1

    iget v0, p0, Lpl/jbzd/app/model/BaseMedia;->width:I

    return v0
.end method

.method public realmGet$youtube()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lpl/jbzd/app/model/BaseMedia;->youtube:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$comments(Lio/realm/q;)V
    .locals 0

    iput-object p1, p0, Lpl/jbzd/app/model/BaseMedia;->comments:Lio/realm/q;

    return-void
.end method

.method public realmSet$date(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lpl/jbzd/app/model/BaseMedia;->date:Ljava/util/Date;

    return-void
.end method

.method public realmSet$height(I)V
    .locals 0

    iput p1, p0, Lpl/jbzd/app/model/BaseMedia;->height:I

    return-void
.end method

.method public realmSet$id(I)V
    .locals 0

    iput p1, p0, Lpl/jbzd/app/model/BaseMedia;->id:I

    return-void
.end method

.method public realmSet$image(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpl/jbzd/app/model/BaseMedia;->image:Ljava/lang/String;

    return-void
.end method

.method public realmSet$in_queue(Z)V
    .locals 0

    iput-boolean p1, p0, Lpl/jbzd/app/model/BaseMedia;->in_queue:Z

    return-void
.end method

.method public realmSet$is_favorite(Z)V
    .locals 0

    iput-boolean p1, p0, Lpl/jbzd/app/model/BaseMedia;->is_favorite:Z

    return-void
.end method

.method public realmSet$media_added(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lpl/jbzd/app/model/BaseMedia;->media_added:Ljava/util/Date;

    return-void
.end method

.method public realmSet$movie(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpl/jbzd/app/model/BaseMedia;->movie:Ljava/lang/String;

    return-void
.end method

.method public realmSet$pictures(Lio/realm/q;)V
    .locals 0

    iput-object p1, p0, Lpl/jbzd/app/model/BaseMedia;->pictures:Lio/realm/q;

    return-void
.end method

.method public realmSet$pictures_counter(I)V
    .locals 0

    iput p1, p0, Lpl/jbzd/app/model/BaseMedia;->pictures_counter:I

    return-void
.end method

.method public realmSet$ratio(F)V
    .locals 0

    iput p1, p0, Lpl/jbzd/app/model/BaseMedia;->ratio:F

    return-void
.end method

.method public realmSet$share_image(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpl/jbzd/app/model/BaseMedia;->share_image:Ljava/lang/String;

    return-void
.end method

.method public realmSet$share_url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpl/jbzd/app/model/BaseMedia;->share_url:Ljava/lang/String;

    return-void
.end method

.method public realmSet$title(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpl/jbzd/app/model/BaseMedia;->title:Ljava/lang/String;

    return-void
.end method

.method public realmSet$type(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpl/jbzd/app/model/BaseMedia;->type:Ljava/lang/String;

    return-void
.end method

.method public realmSet$url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpl/jbzd/app/model/BaseMedia;->url:Ljava/lang/String;

    return-void
.end method

.method public realmSet$user_id(I)V
    .locals 0

    iput p1, p0, Lpl/jbzd/app/model/BaseMedia;->user_id:I

    return-void
.end method

.method public realmSet$vote_score(I)V
    .locals 0

    iput p1, p0, Lpl/jbzd/app/model/BaseMedia;->vote_score:I

    return-void
.end method

.method public realmSet$voted(I)V
    .locals 0

    iput p1, p0, Lpl/jbzd/app/model/BaseMedia;->voted:I

    return-void
.end method

.method public realmSet$width(I)V
    .locals 0

    iput p1, p0, Lpl/jbzd/app/model/BaseMedia;->width:I

    return-void
.end method

.method public realmSet$youtube(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpl/jbzd/app/model/BaseMedia;->youtube:Ljava/lang/String;

    return-void
.end method

.method public setComments(Lio/realm/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/q",
            "<",
            "Lpl/jbzd/app/model/Comment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/BaseMedia;->realmSet$comments(Lio/realm/q;)V

    .line 268
    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/BaseMedia;->realmSet$date(Ljava/util/Date;)V

    .line 228
    return-void
.end method

.method public setExpand(Z)V
    .locals 0

    .prologue
    .line 299
    iput-boolean p1, p0, Lpl/jbzd/app/model/BaseMedia;->isExpand:Z

    .line 300
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/BaseMedia;->realmSet$height(I)V

    .line 180
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/BaseMedia;->realmSet$id(I)V

    .line 132
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/BaseMedia;->realmSet$image(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public setIn_queue(Z)V
    .locals 0

    .prologue
    .line 275
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/BaseMedia;->realmSet$in_queue(Z)V

    .line 276
    return-void
.end method

.method public setIs_favorite(Z)V
    .locals 0

    .prologue
    .line 315
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/BaseMedia;->realmSet$is_favorite(Z)V

    .line 316
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0

    .prologue
    .line 307
    iput p1, p0, Lpl/jbzd/app/model/BaseMedia;->maxHeight:I

    .line 308
    return-void
.end method

.method public setMedia_added(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 195
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/BaseMedia;->realmSet$media_added(Ljava/util/Date;)V

    .line 196
    return-void
.end method

.method public setMovie(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/BaseMedia;->realmSet$movie(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public setPictures(Lio/realm/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/q",
            "<",
            "Lpl/jbzd/app/model/Picture;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 259
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/BaseMedia;->realmSet$pictures(Lio/realm/q;)V

    .line 260
    return-void
.end method

.method public setPictures_counter(I)V
    .locals 0

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/BaseMedia;->realmSet$pictures_counter(I)V

    .line 188
    return-void
.end method

.method public setRatio(F)V
    .locals 0

    .prologue
    .line 291
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/BaseMedia;->realmSet$ratio(F)V

    .line 292
    return-void
.end method

.method public setShare_image(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 243
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/BaseMedia;->realmSet$share_image(Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public setShare_url(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 235
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/BaseMedia;->realmSet$share_url(Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public setSize(II)V
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/BaseMedia;->realmSet$width(I)V

    .line 112
    add-int/lit8 v0, p2, -0x24

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/BaseMedia;->realmSet$height(I)V

    .line 114
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$width()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$height()I

    move-result v0

    if-nez v0, :cond_1

    .line 115
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/BaseMedia;->realmSet$ratio(F)V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/BaseMedia;->realmSet$ratio(F)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/BaseMedia;->realmSet$title(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/BaseMedia;->realmSet$type(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/BaseMedia;->realmSet$url(Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public setUser_id(I)V
    .locals 0

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/BaseMedia;->realmSet$user_id(I)V

    .line 140
    return-void
.end method

.method public setVote_score(I)V
    .locals 0

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/BaseMedia;->realmSet$vote_score(I)V

    .line 220
    return-void
.end method

.method public setVoted(I)V
    .locals 0

    .prologue
    .line 283
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/BaseMedia;->realmSet$voted(I)V

    .line 284
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/BaseMedia;->realmSet$width(I)V

    .line 172
    return-void
.end method

.method public setYoutube(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 251
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/BaseMedia;->realmSet$youtube(Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const-class v0, Lpl/jbzd/app/model/BaseMedia;

    invoke-static {p0, v0}, Lpl/jbzd/api/util/ApiUtils;->toString(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 361
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$id()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$user_id()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$type()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$image()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$movie()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$width()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$height()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$pictures_counter()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 369
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$media_added()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 370
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$title()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$vote_score()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$date()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 374
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$share_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$share_image()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$youtube()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$voted()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$ratio()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 379
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$in_queue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    iget-boolean v0, p0, Lpl/jbzd/app/model/BaseMedia;->isExpand:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$is_favorite()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    iget v0, p0, Lpl/jbzd/app/model/BaseMedia;->maxHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$pictures()Lio/realm/q;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/q;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$pictures()Lio/realm/q;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/q;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Picture;

    .line 386
    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_3

    :cond_0
    move v0, v2

    .line 379
    goto :goto_0

    :cond_1
    move v0, v2

    .line 380
    goto :goto_1

    :cond_2
    move v1, v2

    .line 381
    goto :goto_2

    .line 389
    :cond_3
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$comments()Lio/realm/q;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/q;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$comments()Lio/realm/q;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/q;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Comment;

    .line 392
    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_4

    .line 394
    :cond_4
    return-void
.end method
