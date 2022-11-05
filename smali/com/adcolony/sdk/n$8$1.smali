.class Lcom/adcolony/sdk/n$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/n$8;->a(Lcom/adcolony/sdk/z;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/z;

.field final synthetic b:Lcom/adcolony/sdk/n$8;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/n$8;Lcom/adcolony/sdk/z;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/adcolony/sdk/n$8$1;->b:Lcom/adcolony/sdk/n$8;

    iput-object p2, p0, Lcom/adcolony/sdk/n$8$1;->a:Lcom/adcolony/sdk/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/adcolony/sdk/n$8$1;->b:Lcom/adcolony/sdk/n$8;

    iget-object v0, v0, Lcom/adcolony/sdk/n$8;->a:Lcom/adcolony/sdk/n;

    iget-object v1, p0, Lcom/adcolony/sdk/n$8$1;->a:Lcom/adcolony/sdk/z;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/n;->b(Lcom/adcolony/sdk/z;)Z

    .line 387
    iget-object v0, p0, Lcom/adcolony/sdk/n$8$1;->b:Lcom/adcolony/sdk/n$8;

    iget-object v0, v0, Lcom/adcolony/sdk/n$8;->a:Lcom/adcolony/sdk/n;

    invoke-virtual {v0}, Lcom/adcolony/sdk/n;->b()V

    .line 388
    return-void
.end method
