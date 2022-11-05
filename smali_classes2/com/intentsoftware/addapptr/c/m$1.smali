.class final Lcom/intentsoftware/addapptr/c/m$1;
.super Landroid/os/AsyncTask;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/c/m;->loadBitmapForView(Ljava/lang/String;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/intentsoftware/addapptr/c/m$1;->val$view:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 62
    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/m;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/c/m$1;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c/m$1;->val$view:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 67
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 59
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/c/m$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
