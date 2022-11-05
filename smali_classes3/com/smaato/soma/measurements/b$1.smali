.class Lcom/smaato/soma/measurements/b$1;
.super Lcom/smaato/soma/l;
.source "Reporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/measurements/b;->a(Lcom/smaato/soma/measurements/FraudesType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smaato/soma/l",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/measurements/FraudesType;

.field final synthetic b:Lcom/smaato/soma/measurements/b;


# direct methods
.method constructor <init>(Lcom/smaato/soma/measurements/b;Lcom/smaato/soma/measurements/FraudesType;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/smaato/soma/measurements/b$1;->b:Lcom/smaato/soma/measurements/b;

    iput-object p2, p0, Lcom/smaato/soma/measurements/b$1;->a:Lcom/smaato/soma/measurements/FraudesType;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 50
    sget-object v0, Lcom/smaato/soma/measurements/b$2;->a:[I

    iget-object v1, p0, Lcom/smaato/soma/measurements/b$1;->a:Lcom/smaato/soma/measurements/FraudesType;

    invoke-virtual {v1}, Lcom/smaato/soma/measurements/FraudesType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 84
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 52
    :pswitch_0
    new-instance v0, Lcom/smaato/soma/debug/b;

    invoke-static {}, Lcom/smaato/soma/measurements/b;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Uber Frequent Request Detected"

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->WARNING:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    goto :goto_0

    .line 58
    :pswitch_1
    new-instance v0, Lcom/smaato/soma/debug/b;

    invoke-static {}, Lcom/smaato/soma/measurements/b;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Auto Click Detected"

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->WARNING:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    goto :goto_0

    .line 64
    :pswitch_2
    new-instance v0, Lcom/smaato/soma/debug/b;

    invoke-static {}, Lcom/smaato/soma/measurements/b;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Banner is off screen"

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->WARNING:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    goto :goto_0

    .line 70
    :pswitch_3
    new-instance v0, Lcom/smaato/soma/debug/b;

    invoke-static {}, Lcom/smaato/soma/measurements/b;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Bad banner dimension"

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->WARNING:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    goto :goto_0

    .line 76
    :pswitch_4
    new-instance v0, Lcom/smaato/soma/debug/b;

    invoke-static {}, Lcom/smaato/soma/measurements/b;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Banner View is overlapped by another one"

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->WARNING:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/smaato/soma/measurements/b$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
