.class public Lpl/jbzd/app/model/Picture;
.super Lio/realm/u;
.source "Picture.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lio/realm/j;
.implements Lpl/jbzd/core/api/BaseApiModel;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final MAX_IMAGE_SCALE:F = 3.0f


# instance fields
.field public added:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonFormat;
        pattern = "yyyy-MM-dd HH:mm:ss"
        shape = .enum Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->STRING:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "media_pictures_added"
    .end annotation
.end field

.field public height:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "media_pictures_height"
    .end annotation
.end field

.field public id:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "media_pictures_id"
    .end annotation
.end field

.field public image:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "media_pictures_image"
    .end annotation
.end field

.field public mp4:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "media_pictures_mp4"
    .end annotation
.end field

.field public share_image:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "media_share_image"
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "type"
    .end annotation
.end field

.field public width:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "media_pictures_width"
    .end annotation
.end field

.field public youtube:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 159
    new-instance v0, Lpl/jbzd/app/model/Picture$1;

    invoke-direct {v0}, Lpl/jbzd/app/model/Picture$1;-><init>()V

    sput-object v0, Lpl/jbzd/app/model/Picture;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Lio/realm/u;-><init>()V

    instance-of v0, p0, Lio/realm/internal/l;

    if-eqz v0, :cond_0

    check-cast p0, Lio/realm/internal/l;

    invoke-interface {p0}, Lio/realm/internal/l;->a()V

    .line 125
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Lio/realm/u;-><init>()V

    instance-of v0, p0, Lio/realm/internal/l;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/l;

    invoke-interface {v0}, Lio/realm/internal/l;->a()V

    .line 129
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Picture;->realmSet$id(I)V

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Picture;->realmSet$image(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Picture;->realmSet$mp4(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Picture;->realmSet$width(I)V

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Picture;->realmSet$height(I)V

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Picture;->realmSet$added(Ljava/util/Date;)V

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Picture;->realmSet$type(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Picture;->realmSet$share_image(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Picture;->realmSet$youtube(Ljava/lang/String;)V

    .line 138
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public getAdded()Ljava/util/Date;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lpl/jbzd/app/model/Picture;->realmGet$added()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lpl/jbzd/app/model/Picture;->realmGet$height()I

    move-result v0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lpl/jbzd/app/model/Picture;->realmGet$id()I

    move-result v0

    return v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lpl/jbzd/app/model/Picture;->realmGet$image()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMp4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lpl/jbzd/app/model/Picture;->realmGet$mp4()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShare_image()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lpl/jbzd/app/model/Picture;->realmGet$share_image()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lpl/jbzd/app/model/Picture;->realmGet$type()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lpl/jbzd/app/model/Picture;->realmGet$width()I

    move-result v0

    return v0
.end method

.method public getYoutube()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lpl/jbzd/app/model/Picture;->realmGet$youtube()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$added()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lpl/jbzd/app/model/Picture;->added:Ljava/util/Date;

    return-object v0
.end method

.method public realmGet$height()I
    .locals 1

    iget v0, p0, Lpl/jbzd/app/model/Picture;->height:I

    return v0
.end method

.method public realmGet$id()I
    .locals 1

    iget v0, p0, Lpl/jbzd/app/model/Picture;->id:I

    return v0
.end method

.method public realmGet$image()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lpl/jbzd/app/model/Picture;->image:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$mp4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lpl/jbzd/app/model/Picture;->mp4:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$share_image()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lpl/jbzd/app/model/Picture;->share_image:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$type()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lpl/jbzd/app/model/Picture;->type:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$width()I
    .locals 1

    iget v0, p0, Lpl/jbzd/app/model/Picture;->width:I

    return v0
.end method

.method public realmGet$youtube()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lpl/jbzd/app/model/Picture;->youtube:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$added(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lpl/jbzd/app/model/Picture;->added:Ljava/util/Date;

    return-void
.end method

.method public realmSet$height(I)V
    .locals 0

    iput p1, p0, Lpl/jbzd/app/model/Picture;->height:I

    return-void
.end method

.method public realmSet$id(I)V
    .locals 0

    iput p1, p0, Lpl/jbzd/app/model/Picture;->id:I

    return-void
.end method

.method public realmSet$image(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpl/jbzd/app/model/Picture;->image:Ljava/lang/String;

    return-void
.end method

.method public realmSet$mp4(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpl/jbzd/app/model/Picture;->mp4:Ljava/lang/String;

    return-void
.end method

.method public realmSet$share_image(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpl/jbzd/app/model/Picture;->share_image:Ljava/lang/String;

    return-void
.end method

.method public realmSet$type(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpl/jbzd/app/model/Picture;->type:Ljava/lang/String;

    return-void
.end method

.method public realmSet$width(I)V
    .locals 0

    iput p1, p0, Lpl/jbzd/app/model/Picture;->width:I

    return-void
.end method

.method public realmSet$youtube(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpl/jbzd/app/model/Picture;->youtube:Ljava/lang/String;

    return-void
.end method

.method public setAdded(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/Picture;->realmSet$added(Ljava/util/Date;)V

    .line 98
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/Picture;->realmSet$height(I)V

    .line 90
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/Picture;->realmSet$id(I)V

    .line 58
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/Picture;->realmSet$image(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public setMp4(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/Picture;->realmSet$mp4(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public setShare_image(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/Picture;->realmSet$share_image(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/Picture;->realmSet$type(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/Picture;->realmSet$width(I)V

    .line 82
    return-void
.end method

.method public setYoutube(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/Picture;->realmSet$youtube(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-class v0, Lpl/jbzd/app/model/Picture;

    invoke-static {p0, v0}, Lpl/jbzd/api/util/ApiUtils;->toString(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lpl/jbzd/app/model/Picture;->realmGet$id()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    invoke-virtual {p0}, Lpl/jbzd/app/model/Picture;->realmGet$image()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lpl/jbzd/app/model/Picture;->realmGet$mp4()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lpl/jbzd/app/model/Picture;->realmGet$width()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    invoke-virtual {p0}, Lpl/jbzd/app/model/Picture;->realmGet$height()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    invoke-virtual {p0}, Lpl/jbzd/app/model/Picture;->realmGet$added()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 149
    invoke-virtual {p0}, Lpl/jbzd/app/model/Picture;->realmGet$type()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lpl/jbzd/app/model/Picture;->realmGet$share_image()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lpl/jbzd/app/model/Picture;->realmGet$youtube()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    return-void
.end method
