.class Lcom/adcolony/sdk/ck$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ck;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/ck;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ck;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/adcolony/sdk/ck$2;->a:Lcom/adcolony/sdk/ck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/adcolony/sdk/ck$2;->a:Lcom/adcolony/sdk/ck;

    invoke-static {v0}, Lcom/adcolony/sdk/ck;->a(Lcom/adcolony/sdk/ck;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 260
    const-string v0, "STATS"

    invoke-static {v0}, Lcom/adcolony/sdk/co;->i(Ljava/lang/String;)V

    .line 261
    return-void
.end method
