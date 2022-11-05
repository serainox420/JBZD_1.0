.class Lpl/jbzd/app/view/main/MainActivity$7;
.super Lpl/aprilapps/easyphotopicker/a;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/main/MainActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/view/main/MainActivity;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/main/MainActivity;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lpl/jbzd/app/view/main/MainActivity$7;->a:Lpl/jbzd/app/view/main/MainActivity;

    invoke-direct {p0}, Lpl/aprilapps/easyphotopicker/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;I)V
    .locals 3

    .prologue
    .line 245
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$7;->a:Lpl/jbzd/app/view/main/MainActivity;

    const v1, 0x7f0a00c8

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 246
    return-void
.end method

.method public a(Ljava/util/List;Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;",
            "I)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 251
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 253
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 254
    iget-object v1, p0, Lpl/jbzd/app/view/main/MainActivity$7;->a:Lpl/jbzd/app/view/main/MainActivity;

    invoke-virtual {v1}, Lpl/jbzd/app/view/main/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-class v2, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

    .line 256
    if-nez v1, :cond_0

    new-instance v1, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

    invoke-direct {v1}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;-><init>()V

    .line 257
    :cond_0
    invoke-virtual {v1}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->dismissAllowingStateLoss()V

    .line 259
    :cond_1
    invoke-virtual {v1, v0}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->a(Ljava/io/File;)V

    .line 260
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$7;->a:Lpl/jbzd/app/view/main/MainActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/main/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-class v2, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 262
    :cond_2
    return-void
.end method

.method public a(Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;I)V
    .locals 1

    .prologue
    .line 266
    sget-object v0, Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;->CAMERA:Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;

    if-ne p1, v0, :cond_0

    .line 267
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$7;->a:Lpl/jbzd/app/view/main/MainActivity;

    invoke-static {v0}, Lpl/aprilapps/easyphotopicker/EasyImage;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 271
    :cond_0
    return-void
.end method
