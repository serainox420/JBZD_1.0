.class Lcom/smaato/soma/internal/requests/settings/a$b;
.super Ljava/lang/Thread;
.source "DeviceDataCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/internal/requests/settings/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/internal/requests/settings/a;


# direct methods
.method private constructor <init>(Lcom/smaato/soma/internal/requests/settings/a;)V
    .locals 0

    .prologue
    .line 745
    iput-object p1, p0, Lcom/smaato/soma/internal/requests/settings/a$b;->a:Lcom/smaato/soma/internal/requests/settings/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smaato/soma/internal/requests/settings/a;Lcom/smaato/soma/internal/requests/settings/a$1;)V
    .locals 0

    .prologue
    .line 745
    invoke-direct {p0, p1}, Lcom/smaato/soma/internal/requests/settings/a$b;-><init>(Lcom/smaato/soma/internal/requests/settings/a;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 752
    new-instance v0, Lcom/smaato/soma/internal/requests/settings/a$b$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/internal/requests/settings/a$b$1;-><init>(Lcom/smaato/soma/internal/requests/settings/a$b;)V

    .line 784
    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/settings/a$b$1;->c()Ljava/lang/Object;

    .line 785
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 786
    return-void
.end method
