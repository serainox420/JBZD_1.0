.class public abstract Lcom/loopme/video360/texture/MD360Texture;
.super Ljava/lang/Object;
.source "MD360Texture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loopme/video360/texture/MD360Texture$ISyncDrawCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MD360Texture"

.field private static final TEXTURE_EMPTY:I


# instance fields
.field private mHeight:I

.field private mLocalGLTexture:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/loopme/video360/texture/MD360Texture;->mLocalGLTexture:Ljava/lang/ThreadLocal;

    .line 11
    return-void
.end method


# virtual methods
.method public create()V
    .locals 2

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/loopme/video360/texture/MD360Texture;->createTextureId()I

    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    iget-object v1, p0, Lcom/loopme/video360/texture/MD360Texture;->mLocalGLTexture:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 27
    :cond_0
    return-void
.end method

.method protected abstract createTextureId()I
.end method

.method protected getCurrentTextureId()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/loopme/video360/texture/MD360Texture;->mLocalGLTexture:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 33
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/loopme/video360/texture/MD360Texture;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/loopme/video360/texture/MD360Texture;->mWidth:I

    return v0
.end method

.method protected final isEmpty(I)Z
    .locals 1

    .prologue
    .line 37
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract onResize(II)V
.end method

.method public release()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public resize(II)V
    .locals 2

    .prologue
    .line 14
    const/4 v0, 0x0

    .line 15
    iget v1, p0, Lcom/loopme/video360/texture/MD360Texture;->mWidth:I

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/loopme/video360/texture/MD360Texture;->mHeight:I

    if-ne v1, p2, :cond_0

    const/4 v0, 0x1

    .line 16
    :cond_0
    iput p1, p0, Lcom/loopme/video360/texture/MD360Texture;->mWidth:I

    .line 17
    iput p2, p0, Lcom/loopme/video360/texture/MD360Texture;->mHeight:I

    .line 20
    if-eqz v0, :cond_1

    iget v0, p0, Lcom/loopme/video360/texture/MD360Texture;->mWidth:I

    iget v1, p0, Lcom/loopme/video360/texture/MD360Texture;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/loopme/video360/texture/MD360Texture;->onResize(II)V

    .line 21
    :cond_1
    return-void
.end method

.method public abstract syncDrawInContext(Lcom/loopme/video360/texture/MD360Texture$ISyncDrawCallback;)V
.end method
