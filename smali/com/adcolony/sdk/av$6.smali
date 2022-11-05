.class Lcom/adcolony/sdk/av$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/av;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/av;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/av;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/adcolony/sdk/av$6;->a:Lcom/adcolony/sdk/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/z;)V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/adcolony/sdk/av$6;->a:Lcom/adcolony/sdk/av;

    invoke-static {v0, p1}, Lcom/adcolony/sdk/av;->a(Lcom/adcolony/sdk/av;Lcom/adcolony/sdk/z;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/adcolony/sdk/av$6;->a:Lcom/adcolony/sdk/av;

    invoke-static {v0, p1}, Lcom/adcolony/sdk/av;->e(Lcom/adcolony/sdk/av;Lcom/adcolony/sdk/z;)Z

    .line 256
    :cond_0
    return-void
.end method
