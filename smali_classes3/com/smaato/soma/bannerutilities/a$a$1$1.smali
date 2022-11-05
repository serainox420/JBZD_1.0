.class Lcom/smaato/soma/bannerutilities/a$a$1$1;
.super Ljava/lang/Object;
.source "AbstractBannerPackage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/bannerutilities/a$a$1;->a()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Lcom/smaato/soma/internal/a/a;

.field final synthetic c:Lcom/smaato/soma/bannerutilities/a$a$1;


# direct methods
.method constructor <init>(Lcom/smaato/soma/bannerutilities/a$a$1;Landroid/app/AlertDialog;Lcom/smaato/soma/internal/a/a;)V
    .locals 0

    .prologue
    .line 984
    iput-object p1, p0, Lcom/smaato/soma/bannerutilities/a$a$1$1;->c:Lcom/smaato/soma/bannerutilities/a$a$1;

    iput-object p2, p0, Lcom/smaato/soma/bannerutilities/a$a$1$1;->a:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/smaato/soma/bannerutilities/a$a$1$1;->b:Lcom/smaato/soma/internal/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 986
    new-instance v0, Lcom/smaato/soma/bannerutilities/a$a$1$1$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/bannerutilities/a$a$1$1$1;-><init>(Lcom/smaato/soma/bannerutilities/a$a$1$1;)V

    .line 1001
    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a$a$1$1$1;->c()Ljava/lang/Object;

    .line 1002
    return-void
.end method
