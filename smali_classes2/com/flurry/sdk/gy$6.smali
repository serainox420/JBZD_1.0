.class final Lcom/flurry/sdk/gy$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gy;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gy;)V
    .locals 0

    .prologue
    .line 1237
    iput-object p1, p0, Lcom/flurry/sdk/gy$6;->a:Lcom/flurry/sdk/gy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 1240
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/gy$6;->a:Lcom/flurry/sdk/gy;

    invoke-static {v1}, Lcom/flurry/sdk/gy;->d(Lcom/flurry/sdk/gy;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "extendedWebViewDialog.onDismiss()"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1241
    iget-object v0, p0, Lcom/flurry/sdk/gy$6;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->f(Lcom/flurry/sdk/gy;)Lcom/flurry/sdk/hk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1242
    iget-object v0, p0, Lcom/flurry/sdk/gy$6;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->f(Lcom/flurry/sdk/gy;)Lcom/flurry/sdk/hk;

    move-result-object v0

    const-string v1, "javascript:if(window.mraid){window.mraid.close();};"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/hk;->loadUrl(Ljava/lang/String;)V

    .line 1244
    :cond_0
    return-void
.end method
