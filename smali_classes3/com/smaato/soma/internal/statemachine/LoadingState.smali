.class public Lcom/smaato/soma/internal/statemachine/LoadingState;
.super Ljava/lang/Object;
.source "LoadingState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smaato/soma/internal/statemachine/LoadingState$a;,
        Lcom/smaato/soma/internal/statemachine/LoadingState$State;
    }
.end annotation


# instance fields
.field private a:Lcom/smaato/soma/internal/statemachine/b;

.field private b:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smaato/soma/internal/statemachine/LoadingState;->a:Lcom/smaato/soma/internal/statemachine/b;

    .line 93
    sget-object v0, Lcom/smaato/soma/internal/statemachine/LoadingState$State;->STATE_IDLE:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    iput-object v0, p0, Lcom/smaato/soma/internal/statemachine/LoadingState;->b:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smaato/soma/internal/statemachine/LoadingState;->c:Z

    return-void
.end method

.method private a(Lcom/smaato/soma/internal/statemachine/LoadingState$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/LoadingStateTransitionTriggeredFailedException;
        }
    .end annotation

    .prologue
    .line 197
    :try_start_0
    sget-object v0, Lcom/smaato/soma/internal/statemachine/LoadingState$1;->a:[I

    invoke-virtual {p1}, Lcom/smaato/soma/internal/statemachine/LoadingState$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 223
    const-string v0, "Unable to Trigger transition"

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/statemachine/LoadingState;->a(Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcom/smaato/soma/internal/c/c;->a()Lcom/smaato/soma/internal/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/c/c;->b()V

    .line 232
    :goto_0
    return-void

    .line 199
    :pswitch_0
    const-string v0, "Trigger transition LoadXml"

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/statemachine/LoadingState;->a(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/smaato/soma/internal/statemachine/LoadingState;->a:Lcom/smaato/soma/internal/statemachine/b;

    invoke-interface {v0}, Lcom/smaato/soma/internal/statemachine/b;->d()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    throw v0

    .line 203
    :pswitch_1
    :try_start_1
    const-string v0, "Trigger transition LoadBanner"

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/statemachine/LoadingState;->a(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/smaato/soma/internal/statemachine/LoadingState;->a:Lcom/smaato/soma/internal/statemachine/b;

    invoke-interface {v0}, Lcom/smaato/soma/internal/statemachine/b;->k()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 229
    :catch_1
    move-exception v0

    .line 230
    new-instance v1, Lcom/smaato/soma/exception/LoadingStateTransitionTriggeredFailedException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/LoadingStateTransitionTriggeredFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 207
    :pswitch_2
    :try_start_2
    const-string v0, "Trigger transition BlockLoading"

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/statemachine/LoadingState;->a(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/smaato/soma/internal/statemachine/LoadingState;->a:Lcom/smaato/soma/internal/statemachine/b;

    invoke-interface {v0}, Lcom/smaato/soma/internal/statemachine/b;->l()V

    goto :goto_0

    .line 211
    :pswitch_3
    const-string v0, "Trigger transition UnblockLoading"

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/statemachine/LoadingState;->a(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/smaato/soma/internal/statemachine/LoadingState;->a:Lcom/smaato/soma/internal/statemachine/b;

    invoke-interface {v0}, Lcom/smaato/soma/internal/statemachine/b;->m()V

    goto :goto_0

    .line 215
    :pswitch_4
    const-string v0, "Trigger transition FinishLoading"

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/statemachine/LoadingState;->a(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/smaato/soma/internal/statemachine/LoadingState;->a:Lcom/smaato/soma/internal/statemachine/b;

    invoke-interface {v0}, Lcom/smaato/soma/internal/statemachine/b;->e()V

    goto :goto_0

    .line 219
    :pswitch_5
    const-string v0, "Trigger transition ErrorLoading"

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/statemachine/LoadingState;->a(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/smaato/soma/internal/statemachine/LoadingState;->a:Lcom/smaato/soma/internal/statemachine/b;

    invoke-interface {v0}, Lcom/smaato/soma/internal/statemachine/b;->n()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private a(Lcom/smaato/soma/internal/statemachine/LoadingState$a;Lcom/smaato/soma/internal/statemachine/LoadingState$State;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/ModifyingLoadingStateFailedException;
        }
    .end annotation

    .prologue
    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/internal/statemachine/LoadingState;->b:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/statemachine/LoadingState;->b(Lcom/smaato/soma/internal/statemachine/LoadingState$State;)V

    .line 244
    invoke-direct {p0, p1}, Lcom/smaato/soma/internal/statemachine/LoadingState;->a(Lcom/smaato/soma/internal/statemachine/LoadingState$a;)V

    .line 245
    iput-object p2, p0, Lcom/smaato/soma/internal/statemachine/LoadingState;->b:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    .line 246
    invoke-direct {p0, p2}, Lcom/smaato/soma/internal/statemachine/LoadingState;->c(Lcom/smaato/soma/internal/statemachine/LoadingState$State;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 252
    return-void

    .line 247
    :catch_0
    move-exception v0

    .line 248
    throw v0

    .line 249
    :catch_1
    move-exception v0

    .line 250
    new-instance v1, Lcom/smaato/soma/exception/ModifyingLoadingStateFailedException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/ModifyingLoadingStateFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/LoadingStateLoggingFailedException;
        }
    .end annotation

    .prologue
    .line 123
    :try_start_0
    iget-boolean v0, p0, Lcom/smaato/soma/internal/statemachine/LoadingState;->c:Z

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "LoadingState"

    const/4 v2, 0x1

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 134
    :cond_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    throw v0

    .line 131
    :catch_1
    move-exception v0

    .line 132
    new-instance v1, Lcom/smaato/soma/exception/LoadingStateLoggingFailedException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/LoadingStateLoggingFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private b(Lcom/smaato/soma/internal/statemachine/LoadingState$State;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/CallingLoadingStateExitFailedException;
        }
    .end annotation

    .prologue
    .line 143
    :try_start_0
    sget-object v0, Lcom/smaato/soma/internal/statemachine/LoadingState$State;->STATE_IDLE:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    if-ne p1, v0, :cond_1

    .line 144
    const-string v0, "Exit state Idle"

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/statemachine/LoadingState;->a(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/smaato/soma/internal/statemachine/LoadingState;->a:Lcom/smaato/soma/internal/statemachine/b;

    invoke-interface {v0}, Lcom/smaato/soma/internal/statemachine/b;->f()V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    sget-object v0, Lcom/smaato/soma/internal/statemachine/LoadingState$State;->STATE_XMLLOADING:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    if-ne p1, v0, :cond_2

    .line 147
    const-string v0, "Exit state XmlLoading"

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/statemachine/LoadingState;->a(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/smaato/soma/internal/statemachine/LoadingState;->a:Lcom/smaato/soma/internal/statemachine/b;

    invoke-interface {v0}, Lcom/smaato/soma/internal/statemachine/b;->h()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    throw v0

    .line 149
    :cond_2
    :try_start_1
    sget-object v0, Lcom/smaato/soma/internal/statemachine/LoadingState$State;->STATE_BLOCKED:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    if-ne p1, v0, :cond_3

    .line 150
    const-string v0, "Exit state Blocked"

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/statemachine/LoadingState;->a(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/smaato/soma/internal/statemachine/LoadingState;->a:Lcom/smaato/soma/internal/statemachine/b;

    invoke-interface {v0}, Lcom/smaato/soma/internal/statemachine/b;->i()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 158
    :catch_1
    move-exception v0

    .line 159
    new-instance v1, Lcom/smaato/soma/exception/CallingLoadingStateExitFailedException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/CallingLoadingStateExitFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 152
    :cond_3
    :try_start_2
    sget-object v0, Lcom/smaato/soma/internal/statemachine/LoadingState$State;->STATE_BANNERLOADING:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    if-ne p1, v0, :cond_0

    .line 153
    const-string v0, "Exit state BannerLoading"

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/statemachine/LoadingState;->a(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/smaato/soma/internal/statemachine/LoadingState;->a:Lcom/smaato/soma/internal/statemachine/b;

    invoke-interface {v0}, Lcom/smaato/soma/internal/statemachine/b;->j()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method private c(Lcom/smaato/soma/internal/statemachine/LoadingState$State;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/CallingLoadingStateEnteredFailedException;
        }
    .end annotation

    .prologue
    .line 170
    :try_start_0
    sget-object v0, Lcom/smaato/soma/internal/statemachine/LoadingState$State;->STATE_IDLE:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    if-ne p1, v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/smaato/soma/internal/statemachine/LoadingState;->a:Lcom/smaato/soma/internal/statemachine/b;

    invoke-interface {v0}, Lcom/smaato/soma/internal/statemachine/b;->b()V

    .line 172
    const-string v0, "Enter state Idle"

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/statemachine/LoadingState;->a(Ljava/lang/String;)V

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    sget-object v0, Lcom/smaato/soma/internal/statemachine/LoadingState$State;->STATE_XMLLOADING:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    if-ne p1, v0, :cond_2

    .line 174
    const-string v0, "Enter state XmlLoading"

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/statemachine/LoadingState;->a(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/smaato/soma/internal/statemachine/LoadingState;->a:Lcom/smaato/soma/internal/statemachine/b;

    invoke-interface {v0}, Lcom/smaato/soma/internal/statemachine/b;->g()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    throw v0

    .line 176
    :cond_2
    :try_start_1
    sget-object v0, Lcom/smaato/soma/internal/statemachine/LoadingState$State;->STATE_BLOCKED:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    if-ne p1, v0, :cond_3

    .line 177
    const-string v0, "Enter state Blocked"

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/statemachine/LoadingState;->a(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/smaato/soma/internal/statemachine/LoadingState;->a:Lcom/smaato/soma/internal/statemachine/b;

    invoke-interface {v0}, Lcom/smaato/soma/internal/statemachine/b;->a()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 185
    :catch_1
    move-exception v0

    .line 186
    new-instance v1, Lcom/smaato/soma/exception/CallingLoadingStateEnteredFailedException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/CallingLoadingStateEnteredFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 179
    :cond_3
    :try_start_2
    sget-object v0, Lcom/smaato/soma/internal/statemachine/LoadingState$State;->STATE_BANNERLOADING:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    if-ne p1, v0, :cond_0

    .line 180
    const-string v0, "Enter state BannerLoading"

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/statemachine/LoadingState;->a(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/smaato/soma/internal/statemachine/LoadingState;->a:Lcom/smaato/soma/internal/statemachine/b;

    invoke-interface {v0}, Lcom/smaato/soma/internal/statemachine/b;->c()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/smaato/soma/internal/statemachine/LoadingState$State;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/smaato/soma/internal/statemachine/LoadingState;->b:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    return-object v0
.end method

.method public a(Lcom/smaato/soma/internal/statemachine/LoadingState$State;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/smaato/soma/internal/statemachine/LoadingState;->b:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    .line 88
    return-void
.end method

.method public a(Lcom/smaato/soma/internal/statemachine/b;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/smaato/soma/internal/statemachine/LoadingState;->a:Lcom/smaato/soma/internal/statemachine/b;

    .line 260
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/smaato/soma/internal/statemachine/LoadingState;->c:Z

    .line 114
    return-void
.end method

.method public b()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/TransitionLoadingXmlFailedException;
        }
    .end annotation

    .prologue
    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/internal/statemachine/LoadingState;->b:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    sget-object v1, Lcom/smaato/soma/internal/statemachine/LoadingState$State;->STATE_IDLE:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    if-ne v0, v1, :cond_0

    .line 278
    sget-object v0, Lcom/smaato/soma/internal/statemachine/LoadingState$a;->a:Lcom/smaato/soma/internal/statemachine/LoadingState$a;

    sget-object v1, Lcom/smaato/soma/internal/statemachine/LoadingState$State;->STATE_XMLLOADING:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    invoke-direct {p0, v0, v1}, Lcom/smaato/soma/internal/statemachine/LoadingState;->a(Lcom/smaato/soma/internal/statemachine/LoadingState$a;Lcom/smaato/soma/internal/statemachine/LoadingState$State;)V

    .line 279
    const/4 v0, 0x1

    .line 283
    :goto_0
    return v0

    .line 281
    :cond_0
    const-string v0, "Unable to trigger LoadXml"

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/statemachine/LoadingState;->a(Ljava/lang/String;)V

    .line 282
    invoke-static {}, Lcom/smaato/soma/internal/c/c;->a()Lcom/smaato/soma/internal/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/c/c;->b()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 283
    const/4 v0, 0x0

    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    throw v0

    .line 286
    :catch_1
    move-exception v0

    .line 287
    new-instance v1, Lcom/smaato/soma/exception/TransitionLoadingXmlFailedException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/TransitionLoadingXmlFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public c()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/LoadingBannerStateFailedException;
        }
    .end annotation

    .prologue
    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/internal/statemachine/LoadingState;->b:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    sget-object v1, Lcom/smaato/soma/internal/statemachine/LoadingState$State;->STATE_XMLLOADING:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    if-ne v0, v1, :cond_0

    .line 299
    sget-object v0, Lcom/smaato/soma/internal/statemachine/LoadingState$a;->b:Lcom/smaato/soma/internal/statemachine/LoadingState$a;

    sget-object v1, Lcom/smaato/soma/internal/statemachine/LoadingState$State;->STATE_BANNERLOADING:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    invoke-direct {p0, v0, v1}, Lcom/smaato/soma/internal/statemachine/LoadingState;->a(Lcom/smaato/soma/internal/statemachine/LoadingState$a;Lcom/smaato/soma/internal/statemachine/LoadingState$State;)V

    .line 300
    const/4 v0, 0x1

    .line 303
    :goto_0
    return v0

    .line 302
    :cond_0
    const-string v0, "Unable to trigger LoadBanner"

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/statemachine/LoadingState;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 303
    const/4 v0, 0x0

    goto :goto_0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    throw v0

    .line 306
    :catch_1
    move-exception v0

    .line 307
    new-instance v1, Lcom/smaato/soma/exception/LoadingBannerStateFailedException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/LoadingBannerStateFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public d()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/BlockingLoadingStateFailedException;
        }
    .end annotation

    .prologue
    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/internal/statemachine/LoadingState;->b:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    sget-object v1, Lcom/smaato/soma/internal/statemachine/LoadingState$State;->STATE_XMLLOADING:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/smaato/soma/internal/statemachine/LoadingState;->b:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    sget-object v1, Lcom/smaato/soma/internal/statemachine/LoadingState$State;->STATE_IDLE:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/smaato/soma/internal/statemachine/LoadingState;->b:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    sget-object v1, Lcom/smaato/soma/internal/statemachine/LoadingState$State;->STATE_BANNERLOADING:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    if-ne v0, v1, :cond_1

    .line 321
    :cond_0
    sget-object v0, Lcom/smaato/soma/internal/statemachine/LoadingState$a;->c:Lcom/smaato/soma/internal/statemachine/LoadingState$a;

    sget-object v1, Lcom/smaato/soma/internal/statemachine/LoadingState$State;->STATE_BLOCKED:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    invoke-direct {p0, v0, v1}, Lcom/smaato/soma/internal/statemachine/LoadingState;->a(Lcom/smaato/soma/internal/statemachine/LoadingState$a;Lcom/smaato/soma/internal/statemachine/LoadingState$State;)V

    .line 322
    const/4 v0, 0x1

    .line 326
    :goto_0
    return v0

    .line 324
    :cond_1
    const-string v0, "Unable to trigger BlockLoading"

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/statemachine/LoadingState;->a(Ljava/lang/String;)V

    .line 325
    invoke-static {}, Lcom/smaato/soma/internal/c/c;->a()Lcom/smaato/soma/internal/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/c/c;->b()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 326
    const/4 v0, 0x0

    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    .line 328
    throw v0

    .line 329
    :catch_1
    move-exception v0

    .line 330
    new-instance v1, Lcom/smaato/soma/exception/BlockingLoadingStateFailedException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/BlockingLoadingStateFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public e()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnblockingLoadingStateFailedException;
        }
    .end annotation

    .prologue
    .line 341
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/internal/statemachine/LoadingState;->b:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    sget-object v1, Lcom/smaato/soma/internal/statemachine/LoadingState$State;->STATE_BLOCKED:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    if-ne v0, v1, :cond_0

    .line 342
    sget-object v0, Lcom/smaato/soma/internal/statemachine/LoadingState$a;->d:Lcom/smaato/soma/internal/statemachine/LoadingState$a;

    sget-object v1, Lcom/smaato/soma/internal/statemachine/LoadingState$State;->STATE_IDLE:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    invoke-direct {p0, v0, v1}, Lcom/smaato/soma/internal/statemachine/LoadingState;->a(Lcom/smaato/soma/internal/statemachine/LoadingState$a;Lcom/smaato/soma/internal/statemachine/LoadingState$State;)V

    .line 343
    const/4 v0, 0x1

    .line 347
    :goto_0
    return v0

    .line 345
    :cond_0
    const-string v0, "Unable to trigger UnblockLoading"

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/statemachine/LoadingState;->a(Ljava/lang/String;)V

    .line 346
    invoke-static {}, Lcom/smaato/soma/internal/c/c;->a()Lcom/smaato/soma/internal/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/c/c;->b()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 347
    const/4 v0, 0x0

    goto :goto_0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    throw v0

    .line 350
    :catch_1
    move-exception v0

    .line 351
    new-instance v1, Lcom/smaato/soma/exception/UnblockingLoadingStateFailedException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/UnblockingLoadingStateFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public f()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/StateFinishedLoadingFailedException;
        }
    .end annotation

    .prologue
    .line 362
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/internal/statemachine/LoadingState;->b:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    sget-object v1, Lcom/smaato/soma/internal/statemachine/LoadingState$State;->STATE_BANNERLOADING:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    if-ne v0, v1, :cond_0

    .line 363
    sget-object v0, Lcom/smaato/soma/internal/statemachine/LoadingState$a;->e:Lcom/smaato/soma/internal/statemachine/LoadingState$a;

    sget-object v1, Lcom/smaato/soma/internal/statemachine/LoadingState$State;->STATE_IDLE:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    invoke-direct {p0, v0, v1}, Lcom/smaato/soma/internal/statemachine/LoadingState;->a(Lcom/smaato/soma/internal/statemachine/LoadingState$a;Lcom/smaato/soma/internal/statemachine/LoadingState$State;)V

    .line 364
    const/4 v0, 0x1

    .line 368
    :goto_0
    return v0

    .line 366
    :cond_0
    const-string v0, "Unable to trigger FinishLoading"

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/statemachine/LoadingState;->a(Ljava/lang/String;)V

    .line 367
    invoke-static {}, Lcom/smaato/soma/internal/c/c;->a()Lcom/smaato/soma/internal/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/c/c;->b()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 368
    const/4 v0, 0x0

    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    .line 370
    throw v0

    .line 371
    :catch_1
    move-exception v0

    .line 372
    new-instance v1, Lcom/smaato/soma/exception/StateFinishedLoadingFailedException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/StateFinishedLoadingFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public g()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/ErrorBannerLoadingFailedException;
        }
    .end annotation

    .prologue
    .line 383
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/internal/statemachine/LoadingState;->b:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    sget-object v1, Lcom/smaato/soma/internal/statemachine/LoadingState$State;->STATE_XMLLOADING:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    if-ne v0, v1, :cond_0

    .line 384
    sget-object v0, Lcom/smaato/soma/internal/statemachine/LoadingState$a;->f:Lcom/smaato/soma/internal/statemachine/LoadingState$a;

    sget-object v1, Lcom/smaato/soma/internal/statemachine/LoadingState$State;->STATE_IDLE:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    invoke-direct {p0, v0, v1}, Lcom/smaato/soma/internal/statemachine/LoadingState;->a(Lcom/smaato/soma/internal/statemachine/LoadingState$a;Lcom/smaato/soma/internal/statemachine/LoadingState$State;)V

    .line 385
    const/4 v0, 0x1

    .line 389
    :goto_0
    return v0

    .line 387
    :cond_0
    const-string v0, "Unable to trigger ErrorLoading"

    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/statemachine/LoadingState;->a(Ljava/lang/String;)V

    .line 388
    invoke-static {}, Lcom/smaato/soma/internal/c/c;->a()Lcom/smaato/soma/internal/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/c/c;->b()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 389
    const/4 v0, 0x0

    goto :goto_0

    .line 390
    :catch_0
    move-exception v0

    .line 391
    throw v0

    .line 392
    :catch_1
    move-exception v0

    .line 393
    new-instance v1, Lcom/smaato/soma/exception/ErrorBannerLoadingFailedException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/ErrorBannerLoadingFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
