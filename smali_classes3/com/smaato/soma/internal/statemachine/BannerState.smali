.class public Lcom/smaato/soma/internal/statemachine/BannerState;
.super Ljava/lang/Object;
.source "BannerState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smaato/soma/internal/statemachine/BannerState$a;,
        Lcom/smaato/soma/internal/statemachine/BannerState$State;
    }
.end annotation


# instance fields
.field private a:Lcom/smaato/soma/internal/statemachine/a;

.field private b:Lcom/smaato/soma/internal/statemachine/BannerState$State;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smaato/soma/internal/statemachine/BannerState;->a:Lcom/smaato/soma/internal/statemachine/a;

    .line 82
    sget-object v0, Lcom/smaato/soma/internal/statemachine/BannerState$State;->STATE_EMPTY:Lcom/smaato/soma/internal/statemachine/BannerState$State;

    iput-object v0, p0, Lcom/smaato/soma/internal/statemachine/BannerState;->b:Lcom/smaato/soma/internal/statemachine/BannerState$State;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smaato/soma/internal/statemachine/BannerState;->c:Z

    return-void
.end method

.method private a(Lcom/smaato/soma/internal/statemachine/BannerState$State;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/CallingExitBannerStateExitFailedException;
        }
    .end annotation

    .prologue
    .line 131
    :try_start_0
    sget-object v0, Lcom/smaato/soma/internal/statemachine/BannerState$1;->a:[I

    invoke-virtual {p1}, Lcom/smaato/soma/internal/statemachine/BannerState$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 145
    const-string v0, "Unknown exit state"

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/statemachine/BannerState;->a(Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/smaato/soma/internal/c/c;->a()Lcom/smaato/soma/internal/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/c/c;->b()V

    .line 154
    :goto_0
    return-void

    .line 133
    :pswitch_0
    const-string v0, "Exit state BannerDisplayed"

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/statemachine/BannerState;->a(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/smaato/soma/internal/statemachine/BannerState;->a:Lcom/smaato/soma/internal/statemachine/a;

    invoke-interface {v0}, Lcom/smaato/soma/internal/statemachine/a;->i()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    throw v0

    .line 137
    :pswitch_1
    :try_start_1
    const-string v0, "Exit state BannerExpanded"

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/statemachine/BannerState;->a(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/smaato/soma/internal/statemachine/BannerState;->a:Lcom/smaato/soma/internal/statemachine/a;

    invoke-interface {v0}, Lcom/smaato/soma/internal/statemachine/a;->c()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 151
    :catch_1
    move-exception v0

    .line 152
    new-instance v1, Lcom/smaato/soma/exception/CallingExitBannerStateExitFailedException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/CallingExitBannerStateExitFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 141
    :pswitch_2
    :try_start_2
    const-string v0, "Exit state Empty"

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/statemachine/BannerState;->a(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/smaato/soma/internal/statemachine/BannerState;->a:Lcom/smaato/soma/internal/statemachine/a;

    invoke-interface {v0}, Lcom/smaato/soma/internal/statemachine/a;->g()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lcom/smaato/soma/internal/statemachine/BannerState$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/TriggerBannerStateTransitionException;
        }
    .end annotation

    .prologue
    .line 196
    :try_start_0
    sget-object v0, Lcom/smaato/soma/internal/statemachine/BannerState$1;->b:[I

    invoke-virtual {p1}, Lcom/smaato/soma/internal/statemachine/BannerState$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 218
    const-string v0, "Unable to call Transition"

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/statemachine/BannerState;->a(Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lcom/smaato/soma/internal/c/c;->a()Lcom/smaato/soma/internal/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/c/c;->b()V

    .line 227
    :goto_0
    return-void

    .line 198
    :pswitch_0
    const-string v0, "Trigger transition ExpandBanner"

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/statemachine/BannerState;->a(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/smaato/soma/internal/statemachine/BannerState;->a:Lcom/smaato/soma/internal/statemachine/a;

    invoke-interface {v0}, Lcom/smaato/soma/internal/statemachine/a;->j()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    throw v0

    .line 203
    :pswitch_1
    :try_start_1
    const-string v0, "Trigger transition CloseNoOrmma"

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/statemachine/BannerState;->a(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/smaato/soma/internal/statemachine/BannerState;->a:Lcom/smaato/soma/internal/statemachine/a;

    invoke-interface {v0}, Lcom/smaato/soma/internal/statemachine/a;->d()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 224
    :catch_1
    move-exception v0

    .line 225
    new-instance v1, Lcom/smaato/soma/exception/TriggerBannerStateTransitionException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/TriggerBannerStateTransitionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 208
    :pswitch_2
    :try_start_2
    const-string v0, "Trigger transition CloseOrmma"

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/statemachine/BannerState;->a(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/smaato/soma/internal/statemachine/BannerState;->a:Lcom/smaato/soma/internal/statemachine/a;

    invoke-interface {v0}, Lcom/smaato/soma/internal/statemachine/a;->e()V

    goto :goto_0

    .line 213
    :pswitch_3
    const-string v0, "Trigger transition DisplayBanner"

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/statemachine/BannerState;->a(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/smaato/soma/internal/statemachine/BannerState;->a:Lcom/smaato/soma/internal/statemachine/a;

    invoke-interface {v0}, Lcom/smaato/soma/internal/statemachine/a;->a()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Lcom/smaato/soma/internal/statemachine/BannerState$a;Lcom/smaato/soma/internal/statemachine/BannerState$State;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/ChangingBannerStateFailedException;
        }
    .end annotation

    .prologue
    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/internal/statemachine/BannerState;->b:Lcom/smaato/soma/internal/statemachine/BannerState$State;

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/statemachine/BannerState;->a(Lcom/smaato/soma/internal/statemachine/BannerState$State;)V

    .line 239
    invoke-direct {p0, p1}, Lcom/smaato/soma/internal/statemachine/BannerState;->a(Lcom/smaato/soma/internal/statemachine/BannerState$a;)V

    .line 240
    iput-object p2, p0, Lcom/smaato/soma/internal/statemachine/BannerState;->b:Lcom/smaato/soma/internal/statemachine/BannerState$State;

    .line 241
    invoke-direct {p0, p2}, Lcom/smaato/soma/internal/statemachine/BannerState;->b(Lcom/smaato/soma/internal/statemachine/BannerState$State;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 247
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 243
    throw v0

    .line 244
    :catch_1
    move-exception v0

    .line 245
    new-instance v1, Lcom/smaato/soma/exception/ChangingBannerStateFailedException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/ChangingBannerStateFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/BannerStateLoggingFailedException;
        }
    .end annotation

    .prologue
    .line 111
    :try_start_0
    iget-boolean v0, p0, Lcom/smaato/soma/internal/statemachine/BannerState;->c:Z

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "BannerState"

    const/4 v2, 0x1

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 122
    :cond_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    throw v0

    .line 119
    :catch_1
    move-exception v0

    .line 120
    new-instance v1, Lcom/smaato/soma/exception/BannerStateLoggingFailedException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/BannerStateLoggingFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private b(Lcom/smaato/soma/internal/statemachine/BannerState$State;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/CallingEnterBannerStateFailedException;
        }
    .end annotation

    .prologue
    .line 163
    :try_start_0
    sget-object v0, Lcom/smaato/soma/internal/statemachine/BannerState$1;->a:[I

    invoke-virtual {p1}, Lcom/smaato/soma/internal/statemachine/BannerState$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 178
    const-string v0, "Unknown enter state"

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/statemachine/BannerState;->a(Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lcom/smaato/soma/internal/c/c;->a()Lcom/smaato/soma/internal/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/c/c;->b()V

    .line 187
    :goto_0
    return-void

    .line 165
    :pswitch_0
    const-string v0, "Enter state Empty"

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/statemachine/BannerState;->a(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/smaato/soma/internal/statemachine/BannerState;->a:Lcom/smaato/soma/internal/statemachine/a;

    invoke-interface {v0}, Lcom/smaato/soma/internal/statemachine/a;->f()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    throw v0

    .line 169
    :pswitch_1
    :try_start_1
    const-string v0, "Enter state BannerDisplayed"

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/statemachine/BannerState;->a(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/smaato/soma/internal/statemachine/BannerState;->a:Lcom/smaato/soma/internal/statemachine/a;

    invoke-interface {v0}, Lcom/smaato/soma/internal/statemachine/a;->h()V

    .line 171
    invoke-static {}, Lcom/smaato/soma/measurements/a;->a()Lcom/smaato/soma/measurements/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/measurements/a;->d()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 184
    :catch_1
    move-exception v0

    .line 185
    new-instance v1, Lcom/smaato/soma/exception/CallingEnterBannerStateFailedException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/CallingEnterBannerStateFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 174
    :pswitch_2
    :try_start_2
    const-string v0, "Enter state BannerExpanded"

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/statemachine/BannerState;->a(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/smaato/soma/internal/statemachine/BannerState;->a:Lcom/smaato/soma/internal/statemachine/a;

    invoke-interface {v0}, Lcom/smaato/soma/internal/statemachine/a;->b()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()Lcom/smaato/soma/internal/statemachine/BannerState$State;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/smaato/soma/internal/statemachine/BannerState;->b:Lcom/smaato/soma/internal/statemachine/BannerState$State;

    return-object v0
.end method

.method public a(Lcom/smaato/soma/internal/statemachine/a;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/smaato/soma/internal/statemachine/BannerState;->a:Lcom/smaato/soma/internal/statemachine/a;

    .line 255
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/smaato/soma/internal/statemachine/BannerState;->c:Z

    .line 102
    return-void
.end method

.method public b()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/TransitionExpandingBannerFailedException;
        }
    .end annotation

    .prologue
    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/internal/statemachine/BannerState;->b:Lcom/smaato/soma/internal/statemachine/BannerState$State;

    sget-object v1, Lcom/smaato/soma/internal/statemachine/BannerState$State;->STATE_BANNERDISPLAYED:Lcom/smaato/soma/internal/statemachine/BannerState$State;

    if-ne v0, v1, :cond_0

    .line 274
    sget-object v0, Lcom/smaato/soma/internal/statemachine/BannerState$a;->a:Lcom/smaato/soma/internal/statemachine/BannerState$a;

    sget-object v1, Lcom/smaato/soma/internal/statemachine/BannerState$State;->STATE_BANNEREXPANDED:Lcom/smaato/soma/internal/statemachine/BannerState$State;

    invoke-direct {p0, v0, v1}, Lcom/smaato/soma/internal/statemachine/BannerState;->a(Lcom/smaato/soma/internal/statemachine/BannerState$a;Lcom/smaato/soma/internal/statemachine/BannerState$State;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 276
    const/4 v0, 0x1

    .line 278
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    throw v0

    .line 281
    :catch_1
    move-exception v0

    .line 282
    new-instance v1, Lcom/smaato/soma/exception/TransitionExpandingBannerFailedException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/TransitionExpandingBannerFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public c()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/TransitionCloseNoOrmmaFailedException;
        }
    .end annotation

    .prologue
    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/internal/statemachine/BannerState;->b:Lcom/smaato/soma/internal/statemachine/BannerState$State;

    sget-object v1, Lcom/smaato/soma/internal/statemachine/BannerState$State;->STATE_BANNEREXPANDED:Lcom/smaato/soma/internal/statemachine/BannerState$State;

    if-ne v0, v1, :cond_0

    .line 294
    sget-object v0, Lcom/smaato/soma/internal/statemachine/BannerState$a;->b:Lcom/smaato/soma/internal/statemachine/BannerState$a;

    sget-object v1, Lcom/smaato/soma/internal/statemachine/BannerState$State;->STATE_EMPTY:Lcom/smaato/soma/internal/statemachine/BannerState$State;

    invoke-direct {p0, v0, v1}, Lcom/smaato/soma/internal/statemachine/BannerState;->a(Lcom/smaato/soma/internal/statemachine/BannerState$a;Lcom/smaato/soma/internal/statemachine/BannerState$State;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 295
    const/4 v0, 0x1

    .line 297
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    throw v0

    .line 300
    :catch_1
    move-exception v0

    .line 301
    new-instance v1, Lcom/smaato/soma/exception/TransitionCloseNoOrmmaFailedException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/TransitionCloseNoOrmmaFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public d()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/TransitionClosingOrmmaFailedException;
        }
    .end annotation

    .prologue
    .line 312
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/internal/statemachine/BannerState;->b:Lcom/smaato/soma/internal/statemachine/BannerState$State;

    sget-object v1, Lcom/smaato/soma/internal/statemachine/BannerState$State;->STATE_BANNEREXPANDED:Lcom/smaato/soma/internal/statemachine/BannerState$State;

    if-ne v0, v1, :cond_0

    .line 313
    sget-object v0, Lcom/smaato/soma/internal/statemachine/BannerState$a;->c:Lcom/smaato/soma/internal/statemachine/BannerState$a;

    sget-object v1, Lcom/smaato/soma/internal/statemachine/BannerState$State;->STATE_BANNERDISPLAYED:Lcom/smaato/soma/internal/statemachine/BannerState$State;

    invoke-direct {p0, v0, v1}, Lcom/smaato/soma/internal/statemachine/BannerState;->a(Lcom/smaato/soma/internal/statemachine/BannerState$a;Lcom/smaato/soma/internal/statemachine/BannerState$State;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 315
    const/4 v0, 0x1

    .line 317
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 318
    :catch_0
    move-exception v0

    .line 319
    throw v0

    .line 320
    :catch_1
    move-exception v0

    .line 321
    new-instance v1, Lcom/smaato/soma/exception/TransitionClosingOrmmaFailedException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/TransitionClosingOrmmaFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public e()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/TransitionDisplayingBannerFailedException;
        }
    .end annotation

    .prologue
    .line 332
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/internal/statemachine/BannerState;->b:Lcom/smaato/soma/internal/statemachine/BannerState$State;

    sget-object v1, Lcom/smaato/soma/internal/statemachine/BannerState$State;->STATE_EMPTY:Lcom/smaato/soma/internal/statemachine/BannerState$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/smaato/soma/internal/statemachine/BannerState;->b:Lcom/smaato/soma/internal/statemachine/BannerState$State;

    sget-object v1, Lcom/smaato/soma/internal/statemachine/BannerState$State;->STATE_BANNERDISPLAYED:Lcom/smaato/soma/internal/statemachine/BannerState$State;

    if-ne v0, v1, :cond_1

    .line 334
    :cond_0
    sget-object v0, Lcom/smaato/soma/internal/statemachine/BannerState$a;->d:Lcom/smaato/soma/internal/statemachine/BannerState$a;

    sget-object v1, Lcom/smaato/soma/internal/statemachine/BannerState$State;->STATE_BANNERDISPLAYED:Lcom/smaato/soma/internal/statemachine/BannerState$State;

    invoke-direct {p0, v0, v1}, Lcom/smaato/soma/internal/statemachine/BannerState;->a(Lcom/smaato/soma/internal/statemachine/BannerState$a;Lcom/smaato/soma/internal/statemachine/BannerState$State;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 336
    const/4 v0, 0x1

    .line 338
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 339
    :catch_0
    move-exception v0

    .line 340
    throw v0

    .line 341
    :catch_1
    move-exception v0

    .line 342
    new-instance v1, Lcom/smaato/soma/exception/TransitionDisplayingBannerFailedException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/TransitionDisplayingBannerFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
