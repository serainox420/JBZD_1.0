.class public Lcom/inmobi/monetization/internal/NativeAdObject;
.super Ljava/lang/Object;
.source "NativeAdObject.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Lcom/inmobi/monetization/internal/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdObject;->a:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdObject;->b:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdObject;->c:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdObject;->d:Lcom/inmobi/monetization/internal/e;

    .line 16
    iput-object p1, p0, Lcom/inmobi/monetization/internal/NativeAdObject;->a:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/inmobi/monetization/internal/NativeAdObject;->b:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/inmobi/monetization/internal/NativeAdObject;->c:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getContextCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdObject;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getNameSpace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdObject;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPubContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdObject;->a:Ljava/lang/String;

    return-object v0
.end method
