.class public abstract Lcom/facebook/internal/FacebookDialogBase;
.super Ljava/lang/Object;
.source "FacebookDialogBase.java"

# interfaces
.implements Lcom/facebook/FacebookDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/FacebookDialogBase$ModeHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CONTENT:",
        "Ljava/lang/Object;",
        "RESU",
        "LT:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookDialog",
        "<TCONTENT;TRESU",
        "LT;",
        ">;"
    }
.end annotation


# static fields
.field protected static final BASE_AUTOMATIC_MODE:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "FacebookDialog"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final fragmentWrapper:Lcom/facebook/internal/FragmentWrapper;

.field private modeHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/FacebookDialogBase",
            "<TCONTENT;TRESU",
            "LT;",
            ">.ModeHandler;>;"
        }
    .end annotation
.end field

.field private requestCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/internal/FacebookDialogBase;->BASE_AUTOMATIC_MODE:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "activity"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Lcom/facebook/internal/FacebookDialogBase;->activity:Landroid/app/Activity;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/internal/FacebookDialogBase;->fragmentWrapper:Lcom/facebook/internal/FragmentWrapper;

    .line 57
    iput p2, p0, Lcom/facebook/internal/FacebookDialogBase;->requestCode:I

    .line 58
    return-void
.end method

.method protected constructor <init>(Lcom/facebook/internal/FragmentWrapper;I)V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, "fragmentWrapper"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Lcom/facebook/internal/FacebookDialogBase;->fragmentWrapper:Lcom/facebook/internal/FragmentWrapper;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/internal/FacebookDialogBase;->activity:Landroid/app/Activity;

    .line 64
    iput p2, p0, Lcom/facebook/internal/FacebookDialogBase;->requestCode:I

    .line 66
    invoke-virtual {p1}, Lcom/facebook/internal/FragmentWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot use a fragment that is not attached to an activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    return-void
.end method

.method private cachedModeHandlers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/FacebookDialogBase",
            "<TCONTENT;TRESU",
            "LT;",
            ">.ModeHandler;>;"
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/facebook/internal/FacebookDialogBase;->modeHandlers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/facebook/internal/FacebookDialogBase;->getOrderedModeHandlers()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/FacebookDialogBase;->modeHandlers:Ljava/util/List;

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/FacebookDialogBase;->modeHandlers:Ljava/util/List;

    return-object v0
.end method

.method private createAppCallForMode(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/internal/AppCall;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTENT;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/internal/AppCall;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 203
    sget-object v0, Lcom/facebook/internal/FacebookDialogBase;->BASE_AUTOMATIC_MODE:Ljava/lang/Object;

    if-ne p2, v0, :cond_3

    move v1, v2

    .line 205
    :goto_0
    const/4 v3, 0x0

    .line 206
    invoke-direct {p0}, Lcom/facebook/internal/FacebookDialogBase;->cachedModeHandlers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;

    .line 207
    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;->getMode()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 210
    :cond_1
    invoke-virtual {v0, p1, v2}, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;->canShow(Ljava/lang/Object;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 215
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;->createAppCall(Ljava/lang/Object;)Lcom/facebook/internal/AppCall;
    :try_end_0
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 223
    :goto_1
    if-nez v0, :cond_2

    .line 224
    invoke-virtual {p0}, Lcom/facebook/internal/FacebookDialogBase;->createBaseAppCall()Lcom/facebook/internal/AppCall;

    move-result-object v0

    .line 225
    invoke-static {v0}, Lcom/facebook/internal/DialogPresenter;->setupAppCallForCannotShowError(Lcom/facebook/internal/AppCall;)V

    .line 228
    :cond_2
    return-object v0

    .line 203
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v1

    .line 217
    invoke-virtual {p0}, Lcom/facebook/internal/FacebookDialogBase;->createBaseAppCall()Lcom/facebook/internal/AppCall;

    move-result-object v0

    .line 218
    invoke-static {v0, v1}, Lcom/facebook/internal/DialogPresenter;->setupAppCallForValidationError(Lcom/facebook/internal/AppCall;Lcom/facebook/FacebookException;)V

    goto :goto_1

    :cond_4
    move-object v0, v3

    goto :goto_1
.end method


# virtual methods
.method public canShow(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTENT;)Z"
        }
    .end annotation

    .prologue
    .line 122
    sget-object v0, Lcom/facebook/internal/FacebookDialogBase;->BASE_AUTOMATIC_MODE:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;->canShowImpl(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected canShowImpl(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTENT;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 127
    sget-object v0, Lcom/facebook/internal/FacebookDialogBase;->BASE_AUTOMATIC_MODE:Ljava/lang/Object;

    if-ne p2, v0, :cond_2

    move v1, v2

    .line 129
    :goto_0
    invoke-direct {p0}, Lcom/facebook/internal/FacebookDialogBase;->cachedModeHandlers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;

    .line 130
    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;->getMode()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 135
    :cond_1
    invoke-virtual {v0, p1, v3}, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;->canShow(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    :goto_1
    return v2

    :cond_2
    move v1, v3

    .line 127
    goto :goto_0

    :cond_3
    move v2, v3

    .line 140
    goto :goto_1
.end method

.method protected abstract createBaseAppCall()Lcom/facebook/internal/AppCall;
.end method

.method protected getActivityContext()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/facebook/internal/FacebookDialogBase;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/facebook/internal/FacebookDialogBase;->activity:Landroid/app/Activity;

    .line 176
    :goto_0
    return-object v0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/FacebookDialogBase;->fragmentWrapper:Lcom/facebook/internal/FragmentWrapper;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/facebook/internal/FacebookDialogBase;->fragmentWrapper:Lcom/facebook/internal/FragmentWrapper;

    invoke-virtual {v0}, Lcom/facebook/internal/FragmentWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    .line 176
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract getOrderedModeHandlers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/FacebookDialogBase",
            "<TCONTENT;TRESU",
            "LT;",
            ">.ModeHandler;>;"
        }
    .end annotation
.end method

.method public getRequestCode()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/facebook/internal/FacebookDialogBase;->requestCode:I

    return v0
.end method

.method public final registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/CallbackManager;",
            "Lcom/facebook/FacebookCallback",
            "<TRESU",
            "LT;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    instance-of v0, p1, Lcom/facebook/internal/CallbackManagerImpl;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Unexpected CallbackManager, please use the provided Factory."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    check-cast p1, Lcom/facebook/internal/CallbackManagerImpl;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/internal/FacebookDialogBase;->registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V

    .line 81
    return-void
.end method

.method public final registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/CallbackManager;",
            "Lcom/facebook/FacebookCallback",
            "<TRESU",
            "LT;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p0, p3}, Lcom/facebook/internal/FacebookDialogBase;->setRequestCode(I)V

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/facebook/internal/FacebookDialogBase;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 90
    return-void
.end method

.method protected abstract registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/CallbackManagerImpl;",
            "Lcom/facebook/FacebookCallback",
            "<TRESU",
            "LT;",
            ">;)V"
        }
    .end annotation
.end method

.method protected setRequestCode(I)V
    .locals 3

    .prologue
    .line 104
    invoke-static {p1}, Lcom/facebook/FacebookSdk;->isFacebookRequestCode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be within the range reserved by the Facebook SDK."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    iput p1, p0, Lcom/facebook/internal/FacebookDialogBase;->requestCode:I

    .line 109
    return-void
.end method

.method public show(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTENT;)V"
        }
    .end annotation

    .prologue
    .line 145
    sget-object v0, Lcom/facebook/internal/FacebookDialogBase;->BASE_AUTOMATIC_MODE:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;->showImpl(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    return-void
.end method

.method protected showImpl(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTENT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/FacebookDialogBase;->createAppCallForMode(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/internal/AppCall;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_2

    .line 152
    iget-object v1, p0, Lcom/facebook/internal/FacebookDialogBase;->fragmentWrapper:Lcom/facebook/internal/FragmentWrapper;

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/facebook/internal/FacebookDialogBase;->fragmentWrapper:Lcom/facebook/internal/FragmentWrapper;

    invoke-static {v0, v1}, Lcom/facebook/internal/DialogPresenter;->present(Lcom/facebook/internal/AppCall;Lcom/facebook/internal/FragmentWrapper;)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/facebook/internal/FacebookDialogBase;->activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/facebook/internal/DialogPresenter;->present(Lcom/facebook/internal/AppCall;Landroid/app/Activity;)V

    goto :goto_0

    .line 159
    :cond_2
    const-string v0, "No code path should ever result in a null appCall"

    .line 160
    const-string v1, "FacebookDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-static {}, Lcom/facebook/FacebookSdk;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected startActivityForResult(Landroid/content/Intent;I)V
    .locals 4

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 181
    iget-object v1, p0, Lcom/facebook/internal/FacebookDialogBase;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/facebook/internal/FacebookDialogBase;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 194
    :goto_0
    if-eqz v0, :cond_0

    .line 195
    sget-object v1, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    const/4 v2, 0x6

    .line 197
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 195
    invoke-static {v1, v2, v3, v0}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_0
    return-void

    .line 183
    :cond_1
    iget-object v1, p0, Lcom/facebook/internal/FacebookDialogBase;->fragmentWrapper:Lcom/facebook/internal/FragmentWrapper;

    if-eqz v1, :cond_4

    .line 184
    iget-object v1, p0, Lcom/facebook/internal/FacebookDialogBase;->fragmentWrapper:Lcom/facebook/internal/FragmentWrapper;

    invoke-virtual {v1}, Lcom/facebook/internal/FragmentWrapper;->getNativeFragment()Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 185
    iget-object v1, p0, Lcom/facebook/internal/FacebookDialogBase;->fragmentWrapper:Lcom/facebook/internal/FragmentWrapper;

    invoke-virtual {v1}, Lcom/facebook/internal/FragmentWrapper;->getNativeFragment()Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 186
    :cond_2
    iget-object v1, p0, Lcom/facebook/internal/FacebookDialogBase;->fragmentWrapper:Lcom/facebook/internal/FragmentWrapper;

    invoke-virtual {v1}, Lcom/facebook/internal/FragmentWrapper;->getSupportFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 187
    iget-object v1, p0, Lcom/facebook/internal/FacebookDialogBase;->fragmentWrapper:Lcom/facebook/internal/FragmentWrapper;

    invoke-virtual {v1}, Lcom/facebook/internal/FragmentWrapper;->getSupportFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 189
    :cond_3
    const-string v0, "Failed to find Activity or Fragment to startActivityForResult "

    goto :goto_0

    .line 192
    :cond_4
    const-string v0, "Failed to find Activity or Fragment to startActivityForResult "

    goto :goto_0
.end method
