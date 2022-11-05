.class Lcom/adcolony/sdk/j$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adcolony/sdk/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/adcolony/sdk/z;

.field b:Lcom/adcolony/sdk/j;

.field c:Z

.field final synthetic d:Lcom/adcolony/sdk/j;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/j;Lcom/adcolony/sdk/z;Lcom/adcolony/sdk/j;Z)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/adcolony/sdk/j$a;->d:Lcom/adcolony/sdk/j;

    .line 415
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 416
    iput-object p2, p0, Lcom/adcolony/sdk/j$a;->a:Lcom/adcolony/sdk/z;

    .line 417
    iput-object p3, p0, Lcom/adcolony/sdk/j$a;->b:Lcom/adcolony/sdk/j;

    .line 418
    iput-boolean p4, p0, Lcom/adcolony/sdk/j$a;->c:Z

    .line 419
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 424
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 426
    const/4 v0, 0x0

    .line 429
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/j$a;->d:Lcom/adcolony/sdk/j;

    iget-object v1, p0, Lcom/adcolony/sdk/j$a;->b:Lcom/adcolony/sdk/j;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/j;->a(Lcom/adcolony/sdk/j;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 435
    iget-boolean v0, p0, Lcom/adcolony/sdk/j$a;->c:Z

    if-eqz v0, :cond_0

    .line 437
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v1, "Device.update_info"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    .line 443
    :goto_0
    return-void

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/j$a;->a:Lcom/adcolony/sdk/z;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 407
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/j$a;->a([Ljava/lang/Void;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 407
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/j$a;->a(Lorg/json/JSONObject;)V

    return-void
.end method
