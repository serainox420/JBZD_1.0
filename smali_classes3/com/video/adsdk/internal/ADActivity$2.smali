.class Lcom/video/adsdk/internal/ADActivity$2;
.super Ljava/lang/Object;
.source "ADActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/video/adsdk/internal/ADActivity;->onShowDialog(Ljava/lang/String;Landroid/webkit/JsResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/video/adsdk/internal/ADActivity;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcom/video/adsdk/internal/ADActivity;Ljava/lang/String;Landroid/webkit/JsResult;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/video/adsdk/internal/ADActivity$2;->this$0:Lcom/video/adsdk/internal/ADActivity;

    iput-object p2, p0, Lcom/video/adsdk/internal/ADActivity$2;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lcom/video/adsdk/internal/ADActivity$2;->val$result:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 316
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/video/adsdk/internal/ADActivity$2;->this$0:Lcom/video/adsdk/internal/ADActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "javaScript dialog"

    .line 317
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/video/adsdk/internal/ADActivity$2;->val$message:Ljava/lang/String;

    .line 318
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/video/adsdk/internal/ADActivity$2$1;

    invoke-direct {v2, p0}, Lcom/video/adsdk/internal/ADActivity$2$1;-><init>(Lcom/video/adsdk/internal/ADActivity$2;)V

    .line 319
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 325
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 326
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 327
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 328
    return-void
.end method
