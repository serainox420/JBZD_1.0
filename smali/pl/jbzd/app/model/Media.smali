.class public Lpl/jbzd/app/model/Media;
.super Lio/realm/u;
.source "Media.java"

# interfaces
.implements Lio/realm/f;
.implements Lpl/jbzd/app/view/feed/model/BaseFeedModel;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public comments_counter:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "comment_count"
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
    .line 408
    new-instance v0, Lpl/jbzd/app/model/Media$1;

    invoke-direct {v0}, Lpl/jbzd/app/model/Media$1;-><init>()V

    sput-object v0, Lpl/jbzd/app/model/Media;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Lio/realm/u;-><init>()V

    instance-of v0, p0, Lio/realm/internal/l;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/l;

    invoke-interface {v0}, Lio/realm/internal/l;->a()V

    .line 72
    :cond_0
    invoke-virtual {p0, v1}, Lpl/jbzd/app/model/Media;->realmSet$voted(I)V

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Media;->realmSet$ratio(F)V

    .line 74
    invoke-virtual {p0, v1}, Lpl/jbzd/app/model/Media;->realmSet$in_queue(Z)V

    .line 75
    iput-boolean v1, p0, Lpl/jbzd/app/model/Media;->isExpand:Z

    .line 109
    new-instance v0, Lio/realm/q;

    invoke-direct {v0}, Lio/realm/q;-><init>()V

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Media;->realmSet$pictures(Lio/realm/q;)V

    .line 110
    invoke-virtual {p0, v1}, Lpl/jbzd/app/model/Media;->realmSet$in_queue(Z)V

    .line 111
    iput-boolean v1, p0, Lpl/jbzd/app/model/Media;->isExpand:Z

    .line 112
    invoke-virtual {p0, v1}, Lpl/jbzd/app/model/Media;->realmSet$voted(I)V

    .line 113
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-direct {p0}, Lio/realm/u;-><init>()V

    instance-of v0, p0, Lio/realm/internal/l;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/l;

    invoke-interface {v0}, Lio/realm/internal/l;->a()V

    .line 72
    :cond_0
    invoke-virtual {p0, v1}, Lpl/jbzd/app/model/Media;->realmSet$voted(I)V

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Media;->realmSet$ratio(F)V

    .line 74
    invoke-virtual {p0, v1}, Lpl/jbzd/app/model/Media;->realmSet$in_queue(Z)V

    .line 75
    iput-boolean v1, p0, Lpl/jbzd/app/model/Media;->isExpand:Z

    .line 141
    add-int/lit8 v0, p2, 0x24

    invoke-virtual {p0, p1, v0}, Lpl/jbzd/app/model/Media;->setSize(II)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 337
    invoke-direct {p0}, Lio/realm/u;-><init>()V

    instance-of v0, p0, Lio/realm/internal/l;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/l;

    invoke-interface {v0}, Lio/realm/internal/l;->a()V

    .line 72
    :cond_0
    invoke-virtual {p0, v2}, Lpl/jbzd/app/model/Media;->realmSet$voted(I)V

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Media;->realmSet$ratio(F)V

    .line 74
    invoke-virtual {p0, v2}, Lpl/jbzd/app/model/Media;->realmSet$in_queue(Z)V

    .line 75
    iput-boolean v2, p0, Lpl/jbzd/app/model/Media;->isExpand:Z

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Media;->realmSet$id(I)V

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Media;->realmSet$user_id(I)V

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Media;->realmSet$type(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Media;->realmSet$image(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Media;->realmSet$movie(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Media;->realmSet$width(I)V

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Media;->realmSet$height(I)V

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Media;->realmSet$pictures_counter(I)V

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Media;->realmSet$media_added(Ljava/util/Date;)V

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Media;->realmSet$title(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Media;->realmSet$url(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Media;->realmSet$vote_score(I)V

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Media;->realmSet$date(Ljava/util/Date;)V

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Media;->realmSet$share_url(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Media;->realmSet$share_image(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Media;->realmSet$youtube(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Media;->realmSet$comments_counter(I)V

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Media;->realmSet$voted(I)V

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Media;->realmSet$ratio(F)V

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Media;->realmSet$in_queue(Z)V

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lpl/jbzd/app/model/Media;->isExpand:Z

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_3

    :goto_2
    invoke-virtual {p0, v1}, Lpl/jbzd/app/model/Media;->realmSet$is_favorite(Z)V

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lpl/jbzd/app/model/Media;->maxHeight:I

    .line 362
    new-instance v0, Lio/realm/q;

    invoke-direct {v0}, Lio/realm/q;-><init>()V

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Media;->realmSet$pictures(Lio/realm/q;)V

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 365
    :goto_3
    if-ge v2, v1, :cond_4

    .line 366
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$pictures()Lio/realm/q;

    move-result-object v3

    const-class v0, Lpl/jbzd/app/model/Picture;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Picture;

    invoke-virtual {v3, v0}, Lio/realm/q;->a(Lio/realm/t;)Z

    .line 365
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1
    move v0, v2

    .line 357
    goto :goto_0

    :cond_2
    move v0, v2

    .line 358
    goto :goto_1

    :cond_3
    move v1, v2

    .line 359
    goto :goto_2

    .line 368
    :cond_4
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

    .line 116
    invoke-direct {p0}, Lio/realm/u;-><init>()V

    instance-of v0, p0, Lio/realm/internal/l;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/l;

    invoke-interface {v0}, Lio/realm/internal/l;->a()V

    .line 72
    :cond_0
    invoke-virtual {p0, v1}, Lpl/jbzd/app/model/Media;->realmSet$voted(I)V

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Media;->realmSet$ratio(F)V

    .line 74
    invoke-virtual {p0, v1}, Lpl/jbzd/app/model/Media;->realmSet$in_queue(Z)V

    .line 75
    iput-boolean v1, p0, Lpl/jbzd/app/model/Media;->isExpand:Z

    .line 117
    new-instance v0, Lio/realm/q;

    invoke-direct {v0}, Lio/realm/q;-><init>()V

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Media;->realmSet$pictures(Lio/realm/q;)V

    .line 118
    invoke-virtual {p0, v1}, Lpl/jbzd/app/model/Media;->realmSet$in_queue(Z)V

    .line 119
    iput-boolean v1, p0, Lpl/jbzd/app/model/Media;->isExpand:Z

    .line 120
    invoke-virtual {p0, v1}, Lpl/jbzd/app/model/Media;->realmSet$voted(I)V

    .line 122
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/Media;->realmSet$type(Ljava/lang/String;)V

    .line 123
    sget-object v0, Lpl/jbzd/app/view/feed/FeedViewType;->GIF:Lpl/jbzd/app/view/feed/FeedViewType;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/FeedViewType;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2, p3}, Lpl/jbzd/app/model/Media;->setSize(II)V

    .line 125
    :goto_0
    return-void

    .line 124
    :cond_1
    invoke-virtual {p0, p2, p3}, Lpl/jbzd/app/model/Media;->setSize(II)V

    goto :goto_0
.end method

.method public static fromBaseMedia(Lpl/jbzd/app/model/BaseMedia;)Lpl/jbzd/app/model/Media;
    .locals 4

    .prologue
    .line 90
    new-instance v1, Lpl/jbzd/app/model/Media;

    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$type()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$width()I

    move-result v2

    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$height()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lpl/jbzd/app/model/Media;-><init>(Ljava/lang/String;II)V

    .line 92
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$id()I

    move-result v0

    invoke-virtual {v1, v0}, Lpl/jbzd/app/model/Media;->realmSet$id(I)V

    .line 93
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$user_id()I

    move-result v0

    invoke-virtual {v1, v0}, Lpl/jbzd/app/model/Media;->realmSet$user_id(I)V

    .line 94
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$image()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lpl/jbzd/app/model/Media;->realmSet$image(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$pictures_counter()I

    move-result v0

    invoke-virtual {v1, v0}, Lpl/jbzd/app/model/Media;->realmSet$pictures_counter(I)V

    .line 96
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$media_added()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lpl/jbzd/app/model/Media;->realmSet$media_added(Ljava/util/Date;)V

    .line 97
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$title()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lpl/jbzd/app/model/Media;->realmSet$title(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lpl/jbzd/app/model/Media;->realmSet$url(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$vote_score()I

    move-result v0

    invoke-virtual {v1, v0}, Lpl/jbzd/app/model/Media;->realmSet$vote_score(I)V

    .line 100
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$comments()Lio/realm/q;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$comments()Lio/realm/q;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/q;->size()I

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Lpl/jbzd/app/model/Media;->realmSet$comments_counter(I)V

    .line 101
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$date()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lpl/jbzd/app/model/Media;->realmSet$date(Ljava/util/Date;)V

    .line 102
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$share_image()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lpl/jbzd/app/model/Media;->realmSet$share_image(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lpl/jbzd/app/model/BaseMedia;->realmGet$share_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lpl/jbzd/app/model/Media;->realmSet$share_url(Ljava/lang/String;)V

    .line 105
    return-object v1

    .line 100
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x0

    return v0
.end method

.method public getComments_counter()I
    .locals 1

    .prologue
    .line 281
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$comments_counter()I

    move-result v0

    return v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$date()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$height()I

    move-result v0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$id()I

    move-result v0

    return v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$image()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lpl/jbzd/app/model/Media;->maxHeight:I

    return v0
.end method

.method public getMedia_added()Ljava/util/Date;
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$media_added()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMovie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$movie()Ljava/lang/String;

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
    .line 273
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$pictures()Lio/realm/q;

    move-result-object v0

    return-object v0
.end method

.method public getPictures_counter()I
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$pictures_counter()I

    move-result v0

    return v0
.end method

.method public getRatio()F
    .locals 1

    .prologue
    .line 305
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$ratio()F

    move-result v0

    return v0
.end method

.method public getShare_image()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$share_image()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShare_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$share_url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$title()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$type()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUser_id()I
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$user_id()I

    move-result v0

    return v0
.end method

.method public getVote_score()I
    .locals 1

    .prologue
    .line 233
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$vote_score()I

    move-result v0

    return v0
.end method

.method public getVoted()I
    .locals 1

    .prologue
    .line 297
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$voted()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$width()I

    move-result v0

    return v0
.end method

.method public getYoutube()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$youtube()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isExpand()Z
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lpl/jbzd/app/model/Media;->isExpand:Z

    return v0
.end method

.method public isIn_queue()Z
    .locals 1

    .prologue
    .line 289
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$in_queue()Z

    move-result v0

    return v0
.end method

.method public is_favorite()Z
    .locals 1

    .prologue
    .line 329
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$is_favorite()Z

    move-result v0

    return v0
.end method

.method public realmGet$comments_counter()I
    .locals 1

    iget v0, p0, Lpl/jbzd/app/model/Media;->comments_counter:I

    return v0
.end method

.method public realmGet$date()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lpl/jbzd/app/model/Media;->date:Ljava/util/Date;

    return-object v0
.end method

.method public realmGet$height()I
    .locals 1

    iget v0, p0, Lpl/jbzd/app/model/Media;->height:I

    return v0
.end method

.method public realmGet$id()I
    .locals 1

    iget v0, p0, Lpl/jbzd/app/model/Media;->id:I

    return v0
.end method

.method public realmGet$image()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lpl/jbzd/app/model/Media;->image:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$in_queue()Z
    .locals 1

    iget-boolean v0, p0, Lpl/jbzd/app/model/Media;->in_queue:Z

    return v0
.end method

.method public realmGet$is_favorite()Z
    .locals 1

    iget-boolean v0, p0, Lpl/jbzd/app/model/Media;->is_favorite:Z

    return v0
.end method

.method public realmGet$media_added()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lpl/jbzd/app/model/Media;->media_added:Ljava/util/Date;

    return-object v0
.end method

.method public realmGet$movie()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lpl/jbzd/app/model/Media;->movie:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$pictures()Lio/realm/q;
    .locals 1

    iget-object v0, p0, Lpl/jbzd/app/model/Media;->pictures:Lio/realm/q;

    return-object v0
.end method

.method public realmGet$pictures_counter()I
    .locals 1

    iget v0, p0, Lpl/jbzd/app/model/Media;->pictures_counter:I

    return v0
.end method

.method public realmGet$ratio()F
    .locals 1

    iget v0, p0, Lpl/jbzd/app/model/Media;->ratio:F

    return v0
.end method

.method public realmGet$share_image()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lpl/jbzd/app/model/Media;->share_image:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$share_url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lpl/jbzd/app/model/Media;->share_url:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$title()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lpl/jbzd/app/model/Media;->title:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$type()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lpl/jbzd/app/model/Media;->type:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lpl/jbzd/app/model/Media;->url:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$user_id()I
    .locals 1

    iget v0, p0, Lpl/jbzd/app/model/Media;->user_id:I

    return v0
.end method

.method public realmGet$vote_score()I
    .locals 1

    iget v0, p0, Lpl/jbzd/app/model/Media;->vote_score:I

    return v0
.end method

.method public realmGet$voted()I
    .locals 1

    iget v0, p0, Lpl/jbzd/app/model/Media;->voted:I

    return v0
.end method

.method public realmGet$width()I
    .locals 1

    iget v0, p0, Lpl/jbzd/app/model/Media;->width:I

    return v0
.end method

.method public realmGet$youtube()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lpl/jbzd/app/model/Media;->youtube:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$comments_counter(I)V
    .locals 0

    iput p1, p0, Lpl/jbzd/app/model/Media;->comments_counter:I

    return-void
.end method

.method public realmSet$date(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lpl/jbzd/app/model/Media;->date:Ljava/util/Date;

    return-void
.end method

.method public realmSet$height(I)V
    .locals 0

    iput p1, p0, Lpl/jbzd/app/model/Media;->height:I

    return-void
.end method

.method public realmSet$id(I)V
    .locals 0

    iput p1, p0, Lpl/jbzd/app/model/Media;->id:I

    return-void
.end method

.method public realmSet$image(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpl/jbzd/app/model/Media;->image:Ljava/lang/String;

    return-void
.end method

.method public realmSet$in_queue(Z)V
    .locals 0

    iput-boolean p1, p0, Lpl/jbzd/app/model/Media;->in_queue:Z

    return-void
.end method

.method public realmSet$is_favorite(Z)V
    .locals 0

    iput-boolean p1, p0, Lpl/jbzd/app/model/Media;->is_favorite:Z

    return-void
.end method

.method public realmSet$media_added(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lpl/jbzd/app/model/Media;->media_added:Ljava/util/Date;

    return-void
.end method

.method public realmSet$movie(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpl/jbzd/app/model/Media;->movie:Ljava/lang/String;

    return-void
.end method

.method public realmSet$pictures(Lio/realm/q;)V
    .locals 0

    iput-object p1, p0, Lpl/jbzd/app/model/Media;->pictures:Lio/realm/q;

    return-void
.end method

.method public realmSet$pictures_counter(I)V
    .locals 0

    iput p1, p0, Lpl/jbzd/app/model/Media;->pictures_counter:I

    return-void
.end method

.method public realmSet$ratio(F)V
    .locals 0

    iput p1, p0, Lpl/jbzd/app/model/Media;->ratio:F

    return-void
.end method

.method public realmSet$share_image(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpl/jbzd/app/model/Media;->share_image:Ljava/lang/String;

    return-void
.end method

.method public realmSet$share_url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpl/jbzd/app/model/Media;->share_url:Ljava/lang/String;

    return-void
.end method

.method public realmSet$title(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpl/jbzd/app/model/Media;->title:Ljava/lang/String;

    return-void
.end method

.method public realmSet$type(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpl/jbzd/app/model/Media;->type:Ljava/lang/String;

    return-void
.end method

.method public realmSet$url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpl/jbzd/app/model/Media;->url:Ljava/lang/String;

    return-void
.end method

.method public realmSet$user_id(I)V
    .locals 0

    iput p1, p0, Lpl/jbzd/app/model/Media;->user_id:I

    return-void
.end method

.method public realmSet$vote_score(I)V
    .locals 0

    iput p1, p0, Lpl/jbzd/app/model/Media;->vote_score:I

    return-void
.end method

.method public realmSet$voted(I)V
    .locals 0

    iput p1, p0, Lpl/jbzd/app/model/Media;->voted:I

    return-void
.end method

.method public realmSet$width(I)V
    .locals 0

    iput p1, p0, Lpl/jbzd/app/model/Media;->width:I

    return-void
.end method

.method public realmSet$youtube(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpl/jbzd/app/model/Media;->youtube:Ljava/lang/String;

    return-void
.end method

.method public setComments_counter(I)V
    .locals 0

    .prologue
    .line 285
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/Media;->realmSet$comments_counter(I)V

    .line 286
    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 245
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/Media;->realmSet$date(Ljava/util/Date;)V

    .line 246
    return-void
.end method

.method public setExpand(Z)V
    .locals 0

    .prologue
    .line 317
    iput-boolean p1, p0, Lpl/jbzd/app/model/Media;->isExpand:Z

    .line 318
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 197
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/Media;->realmSet$height(I)V

    .line 198
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/Media;->realmSet$id(I)V

    .line 150
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/Media;->realmSet$image(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public setIn_queue(Z)V
    .locals 0

    .prologue
    .line 293
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/Media;->realmSet$in_queue(Z)V

    .line 294
    return-void
.end method

.method public setIs_favorite(Z)V
    .locals 0

    .prologue
    .line 333
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/Media;->realmSet$is_favorite(Z)V

    .line 334
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0

    .prologue
    .line 325
    iput p1, p0, Lpl/jbzd/app/model/Media;->maxHeight:I

    .line 326
    return-void
.end method

.method public setMedia_added(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 213
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/Media;->realmSet$media_added(Ljava/util/Date;)V

    .line 214
    return-void
.end method

.method public setMovie(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/Media;->realmSet$movie(Ljava/lang/String;)V

    .line 182
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
    .line 277
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/Media;->realmSet$pictures(Lio/realm/q;)V

    .line 278
    return-void
.end method

.method public setPictures_counter(I)V
    .locals 0

    .prologue
    .line 205
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/Media;->realmSet$pictures_counter(I)V

    .line 206
    return-void
.end method

.method public setRatio(F)V
    .locals 0

    .prologue
    .line 309
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/Media;->realmSet$ratio(F)V

    .line 310
    return-void
.end method

.method public setShare_image(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 261
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/Media;->realmSet$share_image(Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public setShare_url(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 253
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/Media;->realmSet$share_url(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public setSize(II)V
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/Media;->realmSet$width(I)V

    .line 130
    invoke-virtual {p0, p2}, Lpl/jbzd/app/model/Media;->realmSet$height(I)V

    .line 132
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$width()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$height()I

    move-result v0

    if-nez v0, :cond_1

    .line 133
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Media;->realmSet$ratio(F)V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_1
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Media;->realmSet$ratio(F)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/Media;->realmSet$title(Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/Media;->realmSet$type(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 229
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/Media;->realmSet$url(Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public setUser_id(I)V
    .locals 0

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/Media;->realmSet$user_id(I)V

    .line 158
    return-void
.end method

.method public setVote_score(I)V
    .locals 0

    .prologue
    .line 237
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/Media;->realmSet$vote_score(I)V

    .line 238
    return-void
.end method

.method public setVoted(I)V
    .locals 0

    .prologue
    .line 301
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/Media;->realmSet$voted(I)V

    .line 302
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/Media;->realmSet$width(I)V

    .line 190
    return-void
.end method

.method public setYoutube(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/Media;->realmSet$youtube(Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-class v0, Lpl/jbzd/app/model/Media;

    invoke-static {p0, v0}, Lpl/jbzd/api/util/ApiUtils;->toString(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 373
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$id()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$user_id()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$type()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$image()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$movie()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$width()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$height()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$pictures_counter()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$media_added()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 382
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$title()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$vote_score()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$date()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 386
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$share_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$share_image()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$youtube()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$comments_counter()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$voted()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$ratio()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 392
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$in_queue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    iget-boolean v0, p0, Lpl/jbzd/app/model/Media;->isExpand:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$is_favorite()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    iget v0, p0, Lpl/jbzd/app/model/Media;->maxHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$pictures()Lio/realm/q;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/q;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    invoke-virtual {p0}, Lpl/jbzd/app/model/Media;->realmGet$pictures()Lio/realm/q;

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

    .line 399
    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_3

    :cond_0
    move v0, v2

    .line 392
    goto :goto_0

    :cond_1
    move v0, v2

    .line 393
    goto :goto_1

    :cond_2
    move v1, v2

    .line 394
    goto :goto_2

    .line 401
    :cond_3
    return-void
.end method
