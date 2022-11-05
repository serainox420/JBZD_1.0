.class public final Lcom/moat/analytics/mobile/aol/base/asserts/Asserts;
.super Ljava/lang/Object;
.source "Asserts.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkNotNull(Ljava/lang/Object;)V
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation build Lcom/moat/analytics/mobile/aol/base/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 25
    sget-object v0, Lcom/moat/analytics/mobile/aol/BuildConfig;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    if-nez p0, :cond_0

    .line 27
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Non-null object expected."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    return-void
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lcom/moat/analytics/mobile/aol/base/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 17
    sget-object v0, Lcom/moat/analytics/mobile/aol/BuildConfig;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    if-nez p0, :cond_0

    .line 19
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_0
    return-void
.end method
