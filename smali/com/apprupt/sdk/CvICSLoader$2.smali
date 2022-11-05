.class Lcom/apprupt/sdk/CvICSLoader$2;
.super Ljava/lang/Object;
.source "CvICSLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvICSLoader;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/apprupt/sdk/CvICSLoader;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvICSLoader;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/apprupt/sdk/CvICSLoader$2;->b:Lcom/apprupt/sdk/CvICSLoader;

    iput-object p2, p0, Lcom/apprupt/sdk/CvICSLoader$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 139
    iget-object v0, p0, Lcom/apprupt/sdk/CvICSLoader$2;->b:Lcom/apprupt/sdk/CvICSLoader;

    invoke-static {v0}, Lcom/apprupt/sdk/CvICSLoader;->a(Lcom/apprupt/sdk/CvICSLoader;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 140
    iget-object v0, p0, Lcom/apprupt/sdk/CvICSLoader$2;->b:Lcom/apprupt/sdk/CvICSLoader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvICSLoader;->a(Lcom/apprupt/sdk/CvICSLoader;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 141
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/apprupt/sdk/CvICSLoader$2;->b:Lcom/apprupt/sdk/CvICSLoader;

    invoke-static {v1}, Lcom/apprupt/sdk/CvICSLoader;->b(Lcom/apprupt/sdk/CvICSLoader;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 142
    new-instance v1, Lcom/apprupt/sdk/CvICSLoader$2$1;

    invoke-direct {v1, p0}, Lcom/apprupt/sdk/CvICSLoader$2$1;-><init>(Lcom/apprupt/sdk/CvICSLoader$2;)V

    .line 147
    iget-object v2, p0, Lcom/apprupt/sdk/CvICSLoader$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 148
    const/4 v2, -0x1

    const-string v3, "OK"

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 149
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 150
    return-void
.end method
