.class Lcom/smaato/soma/a$2;
.super Lcom/smaato/soma/l;
.source "AbstractAlertView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smaato/soma/l",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/a;


# direct methods
.method constructor <init>(Lcom/smaato/soma/a;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/smaato/soma/a$2;->a:Lcom/smaato/soma/a;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 285
    iget-object v0, p0, Lcom/smaato/soma/a$2;->a:Lcom/smaato/soma/a;

    invoke-virtual {v0}, Lcom/smaato/soma/a;->b()Landroid/app/AlertDialog;

    move-result-object v0

    .line 286
    if-nez v0, :cond_0

    .line 291
    :goto_0
    return-object v1

    .line 289
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 290
    iget-object v0, p0, Lcom/smaato/soma/a$2;->a:Lcom/smaato/soma/a;

    invoke-virtual {v0, v1}, Lcom/smaato/soma/a;->a(Landroid/app/AlertDialog;)V

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/smaato/soma/a$2;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
