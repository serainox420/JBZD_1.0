.class Lcom/adcolony/sdk/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static d:Landroid/app/AlertDialog;


# instance fields
.field a:Lcom/adcolony/sdk/z;

.field b:Landroid/app/AlertDialog;

.field c:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "Alert.show"

    new-instance v1, Lcom/adcolony/sdk/k$1;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/k$1;-><init>(Lcom/adcolony/sdk/k;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 37
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/adcolony/sdk/k;->a:Lcom/adcolony/sdk/z;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/adcolony/sdk/k;->a:Lcom/adcolony/sdk/z;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/k;->a(Lcom/adcolony/sdk/z;)V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adcolony/sdk/k;->a:Lcom/adcolony/sdk/z;

    .line 134
    :cond_0
    return-void
.end method

.method a(Lcom/adcolony/sdk/z;)V
    .locals 6

    .prologue
    .line 49
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    invoke-virtual {v0}, Lcom/adcolony/sdk/j;->n()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    const v2, 0x1030226

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 53
    :goto_0
    iget-object v1, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "message"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    iget-object v2, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "title"

    invoke-static {v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 55
    iget-object v3, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v4, "positive"

    invoke-static {v3, v4}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 56
    iget-object v4, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v5, "negative"

    invoke-static {v4, v5}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 58
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 59
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 60
    new-instance v1, Lcom/adcolony/sdk/k$2;

    invoke-direct {v1, p0, p1}, Lcom/adcolony/sdk/k$2;-><init>(Lcom/adcolony/sdk/k;Lcom/adcolony/sdk/z;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 77
    const-string v1, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    new-instance v1, Lcom/adcolony/sdk/k$3;

    invoke-direct {v1, p0, p1}, Lcom/adcolony/sdk/k$3;-><init>(Lcom/adcolony/sdk/k;Lcom/adcolony/sdk/z;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 101
    :cond_0
    new-instance v1, Lcom/adcolony/sdk/k$4;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/k$4;-><init>(Lcom/adcolony/sdk/k;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 112
    sget-object v1, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    new-instance v2, Lcom/adcolony/sdk/k$5;

    invoke-direct {v2, p0, v0}, Lcom/adcolony/sdk/k$5;-><init>(Lcom/adcolony/sdk/k;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 121
    return-void

    .line 49
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    const v2, 0x103012e

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    goto :goto_0
.end method
