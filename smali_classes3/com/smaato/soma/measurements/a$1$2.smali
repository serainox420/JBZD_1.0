.class Lcom/smaato/soma/measurements/a$1$2;
.super Ljava/lang/Object;
.source "BannerMeasurements.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/measurements/a$1;->a()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/measurements/a$1;


# direct methods
.method constructor <init>(Lcom/smaato/soma/measurements/a$1;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/smaato/soma/measurements/a$1$2;->a:Lcom/smaato/soma/measurements/a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 194
    new-instance v0, Lcom/smaato/soma/measurements/a$1$2$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/measurements/a$1$2$1;-><init>(Lcom/smaato/soma/measurements/a$1$2;)V

    .line 202
    invoke-virtual {v0}, Lcom/smaato/soma/measurements/a$1$2$1;->c()Ljava/lang/Object;

    .line 203
    return-void
.end method
