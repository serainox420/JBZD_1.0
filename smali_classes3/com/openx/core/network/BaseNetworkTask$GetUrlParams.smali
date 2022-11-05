.class public Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;
.super Ljava/lang/Object;
.source "BaseNetworkTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/core/network/BaseNetworkTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetUrlParams"
.end annotation


# instance fields
.field additionalHeader:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field public followRedirect:Z

.field public name:Ljava/lang/String;

.field public queryParams:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
