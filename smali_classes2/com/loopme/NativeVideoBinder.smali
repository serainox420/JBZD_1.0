.class public Lcom/loopme/NativeVideoBinder;
.super Ljava/lang/Object;
.source "NativeVideoBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loopme/NativeVideoBinder$Builder;
    }
.end annotation


# instance fields
.field private mBannerViewId:I

.field private mLayoutId:I


# direct methods
.method private constructor <init>(Lcom/loopme/NativeVideoBinder$Builder;)V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-static {p1}, Lcom/loopme/NativeVideoBinder$Builder;->access$000(Lcom/loopme/NativeVideoBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/loopme/NativeVideoBinder;->mLayoutId:I

    .line 10
    invoke-static {p1}, Lcom/loopme/NativeVideoBinder$Builder;->access$100(Lcom/loopme/NativeVideoBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/loopme/NativeVideoBinder;->mBannerViewId:I

    .line 11
    return-void
.end method

.method synthetic constructor <init>(Lcom/loopme/NativeVideoBinder$Builder;Lcom/loopme/NativeVideoBinder$1;)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1}, Lcom/loopme/NativeVideoBinder;-><init>(Lcom/loopme/NativeVideoBinder$Builder;)V

    return-void
.end method


# virtual methods
.method public getBannerViewId()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/loopme/NativeVideoBinder;->mBannerViewId:I

    return v0
.end method

.method public getLayout()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/loopme/NativeVideoBinder;->mLayoutId:I

    return v0
.end method
