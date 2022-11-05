.class public Lcom/intentsoftware/addapptr/ad/NativeAd$a;
.super Ljava/lang/Object;
.source "NativeAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intentsoftware/addapptr/ad/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private final scale:D

.field final synthetic this$0:Lcom/intentsoftware/addapptr/ad/NativeAd;

.field private final value:D


# direct methods
.method public constructor <init>(Lcom/intentsoftware/addapptr/ad/NativeAd;DD)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/intentsoftware/addapptr/ad/NativeAd$a;->this$0:Lcom/intentsoftware/addapptr/ad/NativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide p2, p0, Lcom/intentsoftware/addapptr/ad/NativeAd$a;->value:D

    .line 19
    iput-wide p4, p0, Lcom/intentsoftware/addapptr/ad/NativeAd$a;->scale:D

    .line 20
    return-void
.end method


# virtual methods
.method public getScale()D
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/intentsoftware/addapptr/ad/NativeAd$a;->scale:D

    return-wide v0
.end method

.method public getValue()D
    .locals 2

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/intentsoftware/addapptr/ad/NativeAd$a;->value:D

    return-wide v0
.end method
