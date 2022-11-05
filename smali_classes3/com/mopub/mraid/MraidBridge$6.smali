.class Lcom/mopub/mraid/MraidBridge$6;
.super Ljava/lang/Object;
.source "MraidBridge.java"

# interfaces
.implements Lcom/mopub/mraid/MraidNativeCommandHandler$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mraid/MraidBridge;->a(Lcom/mopub/mraid/MraidJavascriptCommand;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mraid/MraidJavascriptCommand;

.field final synthetic b:Lcom/mopub/mraid/MraidBridge;


# direct methods
.method constructor <init>(Lcom/mopub/mraid/MraidBridge;Lcom/mopub/mraid/MraidJavascriptCommand;)V
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Lcom/mopub/mraid/MraidBridge$6;->b:Lcom/mopub/mraid/MraidBridge;

    iput-object p2, p0, Lcom/mopub/mraid/MraidBridge$6;->a:Lcom/mopub/mraid/MraidJavascriptCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/mopub/mraid/a;)V
    .locals 3

    .prologue
    .line 438
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge$6;->b:Lcom/mopub/mraid/MraidBridge;

    iget-object v1, p0, Lcom/mopub/mraid/MraidBridge$6;->a:Lcom/mopub/mraid/MraidJavascriptCommand;

    invoke-virtual {p1}, Lcom/mopub/mraid/a;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mopub/mraid/MraidBridge;->a(Lcom/mopub/mraid/MraidBridge;Lcom/mopub/mraid/MraidJavascriptCommand;Ljava/lang/String;)V

    .line 439
    return-void
.end method
