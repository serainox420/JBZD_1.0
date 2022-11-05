.class Lcom/adcolony/sdk/n$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/n;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/n;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/n;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/adcolony/sdk/n$5;->a:Lcom/adcolony/sdk/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/z;)V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/adcolony/sdk/n$5;->a:Lcom/adcolony/sdk/n;

    new-instance v1, Lcom/adcolony/sdk/n$5$1;

    invoke-direct {v1, p0, p1}, Lcom/adcolony/sdk/n$5$1;-><init>(Lcom/adcolony/sdk/n$5;Lcom/adcolony/sdk/z;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/n;->a(Ljava/lang/Runnable;)V

    .line 339
    return-void
.end method
