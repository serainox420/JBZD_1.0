.class Lcom/adcolony/sdk/h$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/h;->a(Lcom/adcolony/sdk/AdColonyAppOptions;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/h;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/h;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/adcolony/sdk/h$4;->a:Lcom/adcolony/sdk/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/z;)V
    .locals 2

    .prologue
    .line 411
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 413
    sget-object v0, Lcom/adcolony/sdk/au;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/adcolony/sdk/h$4$1;

    invoke-direct {v1, p0, p1}, Lcom/adcolony/sdk/h$4$1;-><init>(Lcom/adcolony/sdk/h$4;Lcom/adcolony/sdk/z;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 422
    :cond_0
    return-void
.end method
