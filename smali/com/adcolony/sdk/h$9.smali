.class Lcom/adcolony/sdk/h$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/h;->c()V
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
    .line 776
    iput-object p1, p0, Lcom/adcolony/sdk/h$9;->a:Lcom/adcolony/sdk/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 780
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 781
    new-instance v1, Lcom/adcolony/sdk/h$9$1;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/h$9$1;-><init>(Lcom/adcolony/sdk/h$9;)V

    .line 795
    iget-object v2, p0, Lcom/adcolony/sdk/h$9;->a:Lcom/adcolony/sdk/h;

    invoke-static {v2}, Lcom/adcolony/sdk/h;->d(Lcom/adcolony/sdk/h;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 796
    return-void
.end method
