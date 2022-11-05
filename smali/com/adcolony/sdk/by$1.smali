.class Lcom/adcolony/sdk/by$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/bv;Lcom/adcolony/sdk/bt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/bv;

.field final synthetic b:Lcom/adcolony/sdk/bt;

.field final synthetic c:Lcom/adcolony/sdk/by;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/by;Lcom/adcolony/sdk/bv;Lcom/adcolony/sdk/bt;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/adcolony/sdk/by$1;->c:Lcom/adcolony/sdk/by;

    iput-object p2, p0, Lcom/adcolony/sdk/by$1;->a:Lcom/adcolony/sdk/bv;

    iput-object p3, p0, Lcom/adcolony/sdk/by$1;->b:Lcom/adcolony/sdk/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 22
    iget-object v0, p0, Lcom/adcolony/sdk/by$1;->c:Lcom/adcolony/sdk/by;

    invoke-static {v0}, Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/by;)Lcom/adcolony/sdk/bu;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/by$1;->a:Lcom/adcolony/sdk/bv;

    iget-object v2, p0, Lcom/adcolony/sdk/by$1;->b:Lcom/adcolony/sdk/bt;

    invoke-virtual {v0, v1, v2}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;Lcom/adcolony/sdk/bt;)V

    .line 23
    return-void
.end method
