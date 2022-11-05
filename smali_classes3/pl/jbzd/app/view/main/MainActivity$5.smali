.class Lpl/jbzd/app/view/main/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lnet/gotev/uploadservice/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/main/MainActivity;->a(Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;Landroid/view/View;Ljava/lang/String;Ljava/util/List;Ljava/io/File;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

.field final synthetic b:Lpl/jbzd/app/view/main/MainActivity;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/main/MainActivity;Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;)V
    .locals 0

    .prologue
    .line 861
    iput-object p1, p0, Lpl/jbzd/app/view/main/MainActivity$5;->b:Lpl/jbzd/app/view/main/MainActivity;

    iput-object p2, p0, Lpl/jbzd/app/view/main/MainActivity$5;->a:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lnet/gotev/uploadservice/UploadInfo;)V
    .locals 0

    .prologue
    .line 864
    return-void
.end method

.method public a(Landroid/content/Context;Lnet/gotev/uploadservice/UploadInfo;Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 869
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$5;->b:Lpl/jbzd/app/view/main/MainActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/main/MainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 870
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$5;->b:Lpl/jbzd/app/view/main/MainActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/view/main/MainActivity$5;->b:Lpl/jbzd/app/view/main/MainActivity;

    const v2, 0x7f0a00c9

    invoke-virtual {v1, v2}, Lpl/jbzd/app/view/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 872
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Lnet/gotev/uploadservice/UploadInfo;Lnet/gotev/uploadservice/ServerResponse;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 877
    iget-object v2, p0, Lpl/jbzd/app/view/main/MainActivity$5;->b:Lpl/jbzd/app/view/main/MainActivity;

    invoke-virtual {v2}, Lpl/jbzd/app/view/main/MainActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_3

    .line 881
    iget-object v2, p0, Lpl/jbzd/app/view/main/MainActivity$5;->a:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lpl/jbzd/app/view/main/MainActivity$5;->a:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

    invoke-virtual {v2}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lpl/jbzd/app/view/main/MainActivity$5;->a:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

    invoke-virtual {v2}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->getShowsDialog()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 882
    iget-object v2, p0, Lpl/jbzd/app/view/main/MainActivity$5;->a:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

    invoke-virtual {v2, v0}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->a(Z)V

    .line 885
    :cond_0
    if-nez p3, :cond_4

    move v0, v1

    .line 894
    :cond_1
    :goto_0
    if-eqz v0, :cond_6

    .line 896
    if-eqz p3, :cond_2

    .line 900
    :cond_2
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$5;->b:Lpl/jbzd/app/view/main/MainActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lpl/jbzd/app/view/main/MainActivity$5;->b:Lpl/jbzd/app/view/main/MainActivity;

    const v3, 0x7f0a00c9

    invoke-virtual {v2, v3}, Lpl/jbzd/app/view/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 911
    :cond_3
    :goto_1
    return-void

    .line 890
    :cond_4
    invoke-virtual {p3}, Lnet/gotev/uploadservice/ServerResponse;->b()Ljava/lang/String;

    move-result-object v2

    .line 891
    if-eqz v2, :cond_5

    const-string v3, "\"ok\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_5
    move v0, v1

    goto :goto_0

    .line 904
    :cond_6
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$5;->a:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$5;->a:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$5;->a:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->getShowsDialog()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 905
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$5;->a:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->dismissAllowingStateLoss()V

    .line 908
    :cond_7
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$5;->b:Lpl/jbzd/app/view/main/MainActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0a009c

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public b(Landroid/content/Context;Lnet/gotev/uploadservice/UploadInfo;)V
    .locals 0

    .prologue
    .line 915
    return-void
.end method
