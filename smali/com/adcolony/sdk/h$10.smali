.class Lcom/adcolony/sdk/h$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/h;->on_download_finished(Lcom/adcolony/sdk/ADCDownload;Lcom/adcolony/sdk/z;Ljava/util/Map;)V
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
    .line 879
    iput-object p1, p0, Lcom/adcolony/sdk/h$10;->a:Lcom/adcolony/sdk/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 884
    :try_start_0
    const-string v0, "js"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 885
    const-string v0, "adcolony"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 892
    :goto_0
    iget-object v0, p0, Lcom/adcolony/sdk/h$10;->a:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->d:Lcom/adcolony/sdk/ab;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ab;->a()V

    .line 893
    iget-object v0, p0, Lcom/adcolony/sdk/h$10;->a:Lcom/adcolony/sdk/h;

    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->b()Z

    .line 894
    return-void

    .line 887
    :catch_0
    move-exception v0

    .line 889
    iget-object v0, p0, Lcom/adcolony/sdk/h$10;->a:Lcom/adcolony/sdk/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/h;->b(Z)V

    .line 890
    sget-object v0, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    const-string v1, "Expecting libadcolony.so in libs folder but it was not found. Disabling AdColony until next launch."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    goto :goto_0
.end method
