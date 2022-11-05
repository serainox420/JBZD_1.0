.class public abstract Lcom/smaato/soma/a;
.super Ljava/lang/Object;
.source "AbstractAlertView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/smaato/soma/r;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static b:Ljava/lang/String;


# instance fields
.field protected a:Lcom/smaato/soma/e;

.field c:Lcom/smaato/soma/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;

.field private e:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "AbstractAlertView"

    sput-object v0, Lcom/smaato/soma/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/smaato/soma/a;->d:Landroid/content/Context;

    return-object v0
.end method

.method protected a(Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/smaato/soma/a;->e:Landroid/app/AlertDialog;

    .line 272
    return-void
.end method

.method protected b()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/smaato/soma/a;->e:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 281
    new-instance v0, Lcom/smaato/soma/a$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/a$1;-><init>(Lcom/smaato/soma/a;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 282
    new-instance v0, Lcom/smaato/soma/a$2;

    invoke-direct {v0, p0}, Lcom/smaato/soma/a$2;-><init>(Lcom/smaato/soma/a;)V

    .line 293
    invoke-virtual {v0}, Lcom/smaato/soma/a$2;->c()Ljava/lang/Object;

    .line 294
    return-void
.end method
