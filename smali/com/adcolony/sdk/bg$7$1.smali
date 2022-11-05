.class Lcom/adcolony/sdk/bg$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bg$7;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/bg$7;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bg$7;)V
    .locals 0

    .prologue
    .line 791
    iput-object p1, p0, Lcom/adcolony/sdk/bg$7$1;->a:Lcom/adcolony/sdk/bg$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 793
    iget-object v0, p0, Lcom/adcolony/sdk/bg$7$1;->a:Lcom/adcolony/sdk/bg$7;

    iget-object v0, v0, Lcom/adcolony/sdk/bg$7;->b:Lcom/adcolony/sdk/bg;

    iget-object v1, p0, Lcom/adcolony/sdk/bg$7$1;->a:Lcom/adcolony/sdk/bg$7;

    iget-object v1, v1, Lcom/adcolony/sdk/bg$7;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bg;->f(Ljava/lang/String;)V

    .line 794
    return-void
.end method
