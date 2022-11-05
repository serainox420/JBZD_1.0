.class final Lcom/apprupt/sdk/CvExpandActivity$2;
.super Ljava/lang/Object;
.source "CvExpandActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvExpandActivity;->a(Lcom/apprupt/sdk/CvInlineAdWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvInlineAdWrapper;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvInlineAdWrapper;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/apprupt/sdk/CvExpandActivity$2;->a:Lcom/apprupt/sdk/CvInlineAdWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 55
    iget-object v0, p0, Lcom/apprupt/sdk/CvExpandActivity$2;->a:Lcom/apprupt/sdk/CvInlineAdWrapper;

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvInlineAdWrapper;->m()Lcom/apprupt/sdk/CvMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvMediator;->b()Landroid/content/Context;

    move-result-object v0

    .line 56
    invoke-static {}, Lcom/apprupt/sdk/CvExpandActivity;->d()I

    move-result v1

    .line 57
    invoke-static {}, Lcom/apprupt/sdk/CvExpandActivity;->e()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/apprupt/sdk/CvExpandActivity$2;->a:Lcom/apprupt/sdk/CvInlineAdWrapper;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 59
    const-string v3, "mraidId"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/apprupt/sdk/CvExpandActivity;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 62
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 64
    return-void
.end method
