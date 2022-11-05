.class public Lcom/loopme/NativeVideoBinder$Builder;
.super Ljava/lang/Object;
.source "NativeVideoBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loopme/NativeVideoBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBannerViewId:I

.field private mLayoutId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/loopme/NativeVideoBinder$Builder;->mLayoutId:I

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/loopme/NativeVideoBinder$Builder;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/loopme/NativeVideoBinder$Builder;->mLayoutId:I

    return v0
.end method

.method static synthetic access$100(Lcom/loopme/NativeVideoBinder$Builder;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/loopme/NativeVideoBinder$Builder;->mBannerViewId:I

    return v0
.end method


# virtual methods
.method public build()Lcom/loopme/NativeVideoBinder;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/loopme/NativeVideoBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/loopme/NativeVideoBinder;-><init>(Lcom/loopme/NativeVideoBinder$Builder;Lcom/loopme/NativeVideoBinder$1;)V

    return-object v0
.end method

.method public setLoopMeBannerViewId(I)Lcom/loopme/NativeVideoBinder$Builder;
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/loopme/NativeVideoBinder$Builder;->mBannerViewId:I

    .line 33
    return-object p0
.end method
