.class Lcom/smartadserver/android/library/model/SASNativeVideoAdElement$1;
.super Ljava/lang/Object;
.source "SASNativeVideoAdElement.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;-><init>(Lorg/json/JSONObject;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/smartadserver/android/library/model/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 343
    iput-object p1, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement$1;->c:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    iput-object p2, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement$1;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/smartadserver/android/library/model/c;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement$1;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement$1;->b:J

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/smartadserver/android/library/model/c;->a(Ljava/lang/String;ZJ)Lcom/smartadserver/android/library/model/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement$1;->a()Lcom/smartadserver/android/library/model/c;

    move-result-object v0

    return-object v0
.end method
