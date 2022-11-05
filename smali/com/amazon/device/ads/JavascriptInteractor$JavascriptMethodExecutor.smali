.class public abstract Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;
.super Ljava/lang/Object;
.source "JavascriptInteractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/JavascriptInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "JavascriptMethodExecutor"
.end annotation


# instance fields
.field private final methodName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;->methodName:Ljava/lang/String;

    .line 168
    return-void
.end method


# virtual methods
.method protected abstract execute(Lorg/json/JSONObject;)Lorg/json/JSONObject;
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;->methodName:Ljava/lang/String;

    return-object v0
.end method
