.class public final Lcom/facebook/share/model/SharePhoto$Builder;
.super Lcom/facebook/share/model/ShareMedia$Builder;
.source "SharePhoto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/SharePhoto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareMedia$Builder",
        "<",
        "Lcom/facebook/share/model/SharePhoto;",
        "Lcom/facebook/share/model/SharePhoto$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private caption:Ljava/lang/String;

.field private imageUrl:Landroid/net/Uri;

.field private userGenerated:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/facebook/share/model/ShareMedia$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/model/SharePhoto$Builder;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/facebook/share/model/SharePhoto$Builder;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/share/model/SharePhoto$Builder;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/facebook/share/model/SharePhoto$Builder;->imageUrl:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/share/model/SharePhoto$Builder;)Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/facebook/share/model/SharePhoto$Builder;->userGenerated:Z

    return v0
.end method

.method static synthetic access$300(Lcom/facebook/share/model/SharePhoto$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/facebook/share/model/SharePhoto$Builder;->caption:Ljava/lang/String;

    return-object v0
.end method

.method static readPhotoListFrom(Landroid/os/Parcel;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/share/model/SharePhoto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    invoke-static {p0}, Lcom/facebook/share/model/SharePhoto$Builder;->readListFrom(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    .line 234
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 235
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareMedia;

    .line 236
    instance-of v3, v0, Lcom/facebook/share/model/SharePhoto;

    if-eqz v3, :cond_0

    .line 237
    check-cast v0, Lcom/facebook/share/model/SharePhoto;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 240
    :cond_1
    return-object v1
.end method

.method static writePhotoListTo(Landroid/os/Parcel;ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/share/model/SharePhoto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Lcom/facebook/share/model/ShareMedia;

    .line 222
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 223
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareMedia;

    aput-object v0, v2, v1

    .line 222
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {p0, v2, p1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 226
    return-void
.end method


# virtual methods
.method public build()Lcom/facebook/share/model/SharePhoto;
    .locals 2

    .prologue
    .line 192
    new-instance v0, Lcom/facebook/share/model/SharePhoto;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/SharePhoto;-><init>(Lcom/facebook/share/model/SharePhoto$Builder;Lcom/facebook/share/model/SharePhoto$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto$Builder;->build()Lcom/facebook/share/model/SharePhoto;

    move-result-object v0

    return-object v0
.end method

.method getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/facebook/share/model/SharePhoto$Builder;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getImageUrl()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/facebook/share/model/SharePhoto$Builder;->imageUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareMedia;)Lcom/facebook/share/model/ShareMedia$Builder;
    .locals 1

    .prologue
    .line 130
    check-cast p1, Lcom/facebook/share/model/SharePhoto;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/SharePhoto$Builder;->readFrom(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .locals 1

    .prologue
    .line 130
    check-cast p1, Lcom/facebook/share/model/SharePhoto;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/SharePhoto$Builder;->readFrom(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object v0

    return-object v0
.end method

.method readFrom(Landroid/os/Parcel;)Lcom/facebook/share/model/SharePhoto$Builder;
    .locals 1

    .prologue
    .line 209
    const-class v0, Lcom/facebook/share/model/SharePhoto;

    .line 210
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/SharePhoto;

    .line 209
    invoke-virtual {p0, v0}, Lcom/facebook/share/model/SharePhoto$Builder;->readFrom(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public readFrom(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/SharePhoto$Builder;
    .locals 2

    .prologue
    .line 197
    if-nez p1, :cond_0

    .line 200
    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/share/model/ShareMedia$Builder;->readFrom(Lcom/facebook/share/model/ShareMedia;)Lcom/facebook/share/model/ShareMedia$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/SharePhoto$Builder;

    .line 201
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/SharePhoto$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object v0

    .line 202
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->getImageUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/SharePhoto$Builder;->setImageUrl(Landroid/net/Uri;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object v0

    .line 203
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->getUserGenerated()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/SharePhoto$Builder;->setUserGenerated(Z)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object v0

    .line 204
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->getCaption()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/SharePhoto$Builder;->setCaption(Ljava/lang/String;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object p0

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)Lcom/facebook/share/model/SharePhoto$Builder;
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/facebook/share/model/SharePhoto$Builder;->bitmap:Landroid/graphics/Bitmap;

    .line 143
    return-object p0
.end method

.method public setCaption(Ljava/lang/String;)Lcom/facebook/share/model/SharePhoto$Builder;
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/facebook/share/model/SharePhoto$Builder;->caption:Ljava/lang/String;

    .line 177
    return-object p0
.end method

.method public setImageUrl(Landroid/net/Uri;)Lcom/facebook/share/model/SharePhoto$Builder;
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/facebook/share/model/SharePhoto$Builder;->imageUrl:Landroid/net/Uri;

    .line 154
    return-object p0
.end method

.method public setUserGenerated(Z)Lcom/facebook/share/model/SharePhoto$Builder;
    .locals 0

    .prologue
    .line 164
    iput-boolean p1, p0, Lcom/facebook/share/model/SharePhoto$Builder;->userGenerated:Z

    .line 165
    return-object p0
.end method
