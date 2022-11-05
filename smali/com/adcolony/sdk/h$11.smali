.class Lcom/adcolony/sdk/h$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/h;->f(Lcom/adcolony/sdk/z;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/z;

.field final synthetic b:Lcom/adcolony/sdk/h;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/h;Lcom/adcolony/sdk/z;)V
    .locals 0

    .prologue
    .line 1138
    iput-object p1, p0, Lcom/adcolony/sdk/h$11;->b:Lcom/adcolony/sdk/h;

    iput-object p2, p0, Lcom/adcolony/sdk/h$11;->a:Lcom/adcolony/sdk/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/adcolony/sdk/h$11;->b:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->t:Lcom/adcolony/sdk/AdColonyRewardListener;

    new-instance v1, Lcom/adcolony/sdk/AdColonyReward;

    iget-object v2, p0, Lcom/adcolony/sdk/h$11;->a:Lcom/adcolony/sdk/z;

    invoke-direct {v1, v2}, Lcom/adcolony/sdk/AdColonyReward;-><init>(Lcom/adcolony/sdk/z;)V

    invoke-interface {v0, v1}, Lcom/adcolony/sdk/AdColonyRewardListener;->onReward(Lcom/adcolony/sdk/AdColonyReward;)V

    .line 1143
    return-void
.end method
