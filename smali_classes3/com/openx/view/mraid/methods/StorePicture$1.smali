.class Lcom/openx/view/mraid/methods/StorePicture$1;
.super Ljava/lang/Object;
.source "StorePicture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/view/mraid/methods/StorePicture;->storePicture(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/view/mraid/methods/StorePicture;


# direct methods
.method constructor <init>(Lcom/openx/view/mraid/methods/StorePicture;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/openx/view/mraid/methods/StorePicture$1;->this$0:Lcom/openx/view/mraid/methods/StorePicture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/openx/view/mraid/methods/StorePicture$1;->this$0:Lcom/openx/view/mraid/methods/StorePicture;

    invoke-static {v1}, Lcom/openx/view/mraid/methods/StorePicture;->access$000(Lcom/openx/view/mraid/methods/StorePicture;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 47
    const-string v1, "dialog_title_store_picture"

    invoke-static {v1}, Lcom/openx/common/utils/helpers/Utils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 49
    iget-object v1, p0, Lcom/openx/view/mraid/methods/StorePicture$1;->this$0:Lcom/openx/view/mraid/methods/StorePicture;

    invoke-static {v1}, Lcom/openx/view/mraid/methods/StorePicture;->access$100(Lcom/openx/view/mraid/methods/StorePicture;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 51
    const-string v1, "general_save"

    invoke-static {v1}, Lcom/openx/common/utils/helpers/Utils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/openx/view/mraid/methods/StorePicture$1$1;

    invoke-direct {v2, p0}, Lcom/openx/view/mraid/methods/StorePicture$1$1;-><init>(Lcom/openx/view/mraid/methods/StorePicture$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 77
    const-string v1, "general_cancel"

    invoke-static {v1}, Lcom/openx/common/utils/helpers/Utils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/openx/view/mraid/methods/StorePicture$1$2;

    invoke-direct {v2, p0}, Lcom/openx/view/mraid/methods/StorePicture$1$2;-><init>(Lcom/openx/view/mraid/methods/StorePicture$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 86
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 88
    return-void
.end method
