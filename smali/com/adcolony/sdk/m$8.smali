.class Lcom/adcolony/sdk/m$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/m;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/m;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/m;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/adcolony/sdk/m$8;->a:Lcom/adcolony/sdk/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/z;)V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/adcolony/sdk/m$8;->a:Lcom/adcolony/sdk/m;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/m;->b(Lcom/adcolony/sdk/z;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/adcolony/sdk/m$8;->a:Lcom/adcolony/sdk/m;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/m;->h(Lcom/adcolony/sdk/z;)V

    .line 366
    :cond_0
    return-void
.end method
