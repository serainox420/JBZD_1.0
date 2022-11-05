.class Lcom/adcolony/sdk/ao$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ao;->c(Lcom/adcolony/sdk/z;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/adcolony/sdk/z;

.field final synthetic c:Lcom/adcolony/sdk/ao;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ao;Lorg/json/JSONObject;Lcom/adcolony/sdk/z;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/adcolony/sdk/ao$6;->c:Lcom/adcolony/sdk/ao;

    iput-object p2, p0, Lcom/adcolony/sdk/ao$6;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/adcolony/sdk/ao$6;->b:Lcom/adcolony/sdk/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 291
    iget-object v0, p0, Lcom/adcolony/sdk/ao$6;->c:Lcom/adcolony/sdk/ao;

    const-string v1, "Screenshot saved to Gallery!"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/adcolony/sdk/ao;->a(Ljava/lang/String;I)V

    .line 294
    iget-object v0, p0, Lcom/adcolony/sdk/ao$6;->a:Lorg/json/JSONObject;

    const-string v1, "success"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 295
    iget-object v0, p0, Lcom/adcolony/sdk/ao$6;->b:Lcom/adcolony/sdk/z;

    iget-object v1, p0, Lcom/adcolony/sdk/ao$6;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    .line 296
    return-void
.end method
