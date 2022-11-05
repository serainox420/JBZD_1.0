.class Lcom/adcolony/sdk/d$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/d;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/d;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/adcolony/sdk/d$6;->a:Lcom/adcolony/sdk/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/z;)V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/adcolony/sdk/d$6;->a:Lcom/adcolony/sdk/d;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/d;->g(Lcom/adcolony/sdk/z;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/adcolony/sdk/d$6;->a:Lcom/adcolony/sdk/d;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/d;->p(Lcom/adcolony/sdk/z;)Z

    .line 286
    :cond_0
    return-void
.end method
