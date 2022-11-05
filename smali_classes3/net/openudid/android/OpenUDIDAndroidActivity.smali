.class public Lnet/openudid/android/OpenUDIDAndroidActivity;
.super Landroid/app/Activity;
.source "OpenUDIDAndroidActivity.java"


# instance fields
.field private lblCorpUDID:Landroid/widget/TextView;

.field private lblOpenUDID:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    sget v0, Lnet/openudid/android/R$layout;->main:I

    invoke-virtual {p0, v0}, Lnet/openudid/android/OpenUDIDAndroidActivity;->setContentView(I)V

    .line 16
    invoke-virtual {p0}, Lnet/openudid/android/OpenUDIDAndroidActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/openudid/android/OpenUDID;->syncContext(Landroid/content/Context;)V

    .line 17
    sget v0, Lnet/openudid/android/R$id;->textView2:I

    invoke-virtual {p0, v0}, Lnet/openudid/android/OpenUDIDAndroidActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/openudid/android/OpenUDIDAndroidActivity;->lblOpenUDID:Landroid/widget/TextView;

    .line 18
    iget-object v0, p0, Lnet/openudid/android/OpenUDIDAndroidActivity;->lblOpenUDID:Landroid/widget/TextView;

    invoke-static {}, Lnet/openudid/android/OpenUDID;->getOpenUDIDInContext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    sget v0, Lnet/openudid/android/R$id;->TextView4:I

    invoke-virtual {p0, v0}, Lnet/openudid/android/OpenUDIDAndroidActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/openudid/android/OpenUDIDAndroidActivity;->lblCorpUDID:Landroid/widget/TextView;

    .line 21
    iget-object v0, p0, Lnet/openudid/android/OpenUDIDAndroidActivity;->lblCorpUDID:Landroid/widget/TextView;

    const-string v1, "com.wavespread"

    invoke-static {v1}, Lnet/openudid/android/OpenUDID;->getCorpUDID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    return-void
.end method
