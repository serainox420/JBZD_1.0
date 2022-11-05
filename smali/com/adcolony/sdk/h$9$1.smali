.class Lcom/adcolony/sdk/h$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/h$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/h$9;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/h$9;)V
    .locals 0

    .prologue
    .line 782
    iput-object p1, p0, Lcom/adcolony/sdk/h$9$1;->a:Lcom/adcolony/sdk/h$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 787
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->f:Lcom/adcolony/sdk/aj;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->f:Lcom/adcolony/sdk/aj;

    iget-boolean v0, v0, Lcom/adcolony/sdk/aj;->m:Z

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/adcolony/sdk/h$9$1;->a:Lcom/adcolony/sdk/h$9;

    iget-object v0, v0, Lcom/adcolony/sdk/h$9;->a:Lcom/adcolony/sdk/h;

    invoke-static {v0}, Lcom/adcolony/sdk/h;->c(Lcom/adcolony/sdk/h;)V

    .line 793
    :cond_0
    return-void
.end method
