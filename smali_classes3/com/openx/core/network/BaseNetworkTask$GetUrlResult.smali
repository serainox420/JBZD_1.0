.class public Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;
.super Lcom/openx/core/network/exception/BaseExceptionHolder;
.source "BaseNetworkTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/core/network/BaseNetworkTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetUrlResult"
.end annotation


# instance fields
.field public JSRedirectURI:[Ljava/lang/String;

.field public contentType:Ljava/lang/String;

.field public originalUrl:Ljava/lang/String;

.field public response:Ljava/lang/String;

.field public statusCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/openx/core/network/exception/BaseExceptionHolder;-><init>()V

    return-void
.end method
