.class final Lcom/openx/sdk/browser/BrowserControls;
.super Landroid/widget/TableLayout;
.source "BrowserControls.java"


# instance fields
.field private mBackBtn:Landroid/widget/Button;

.field private mBrowserControlsEventsListener:Lcom/openx/sdk/browser/BrowserControlsEventsListener;

.field private mCloseBtn:Landroid/widget/Button;

.field private mCloseEventsListener:Lcom/openx/sdk/event/OXMEventsHandler;

.field private mForthBtn:Landroid/widget/Button;

.field private mLeftPart:Landroid/widget/LinearLayout;

.field private mOpenInExternalBrowserBtn:Landroid/widget/Button;

.field private mRefreshBtn:Landroid/widget/Button;

.field private mRightPart:Landroid/widget/LinearLayout;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/openx/sdk/browser/BrowserControlsEventsListener;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/openx/sdk/browser/BrowserControls;->init(Landroid/content/res/Resources;Lcom/openx/sdk/browser/BrowserControlsEventsListener;)V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/openx/sdk/browser/BrowserControls;)Lcom/openx/sdk/browser/BrowserControlsEventsListener;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/openx/sdk/browser/BrowserControls;->mBrowserControlsEventsListener:Lcom/openx/sdk/browser/BrowserControlsEventsListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/openx/sdk/browser/BrowserControls;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/openx/sdk/browser/BrowserControls;->mBackBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/openx/sdk/browser/BrowserControls;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/openx/sdk/browser/BrowserControls;->mForthBtn:Landroid/widget/Button;

    return-object v0
.end method

.method private bindEventListeners()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/openx/sdk/browser/BrowserControls;->mCloseBtn:Landroid/widget/Button;

    new-instance v1, Lcom/openx/sdk/browser/BrowserControls$2;

    invoke-direct {v1, p0}, Lcom/openx/sdk/browser/BrowserControls$2;-><init>(Lcom/openx/sdk/browser/BrowserControls;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/openx/sdk/browser/BrowserControls;->mBackBtn:Landroid/widget/Button;

    new-instance v1, Lcom/openx/sdk/browser/BrowserControls$3;

    invoke-direct {v1, p0}, Lcom/openx/sdk/browser/BrowserControls$3;-><init>(Lcom/openx/sdk/browser/BrowserControls;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/openx/sdk/browser/BrowserControls;->mForthBtn:Landroid/widget/Button;

    new-instance v1, Lcom/openx/sdk/browser/BrowserControls$4;

    invoke-direct {v1, p0}, Lcom/openx/sdk/browser/BrowserControls$4;-><init>(Lcom/openx/sdk/browser/BrowserControls;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/openx/sdk/browser/BrowserControls;->mRefreshBtn:Landroid/widget/Button;

    new-instance v1, Lcom/openx/sdk/browser/BrowserControls$5;

    invoke-direct {v1, p0}, Lcom/openx/sdk/browser/BrowserControls$5;-><init>(Lcom/openx/sdk/browser/BrowserControls;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/openx/sdk/browser/BrowserControls;->mOpenInExternalBrowserBtn:Landroid/widget/Button;

    new-instance v1, Lcom/openx/sdk/browser/BrowserControls$6;

    invoke-direct {v1, p0}, Lcom/openx/sdk/browser/BrowserControls$6;-><init>(Lcom/openx/sdk/browser/BrowserControls;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    return-void
.end method

.method private init(Landroid/content/res/Resources;Lcom/openx/sdk/browser/BrowserControlsEventsListener;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 185
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/openx/sdk/browser/BrowserControls;->mUIHandler:Landroid/os/Handler;

    .line 186
    iput-object p2, p0, Lcom/openx/sdk/browser/BrowserControls;->mBrowserControlsEventsListener:Lcom/openx/sdk/browser/BrowserControlsEventsListener;

    .line 188
    new-instance v0, Landroid/widget/TableRow;

    invoke-virtual {p0}, Lcom/openx/sdk/browser/BrowserControls;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 189
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/openx/sdk/browser/BrowserControls;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/openx/sdk/browser/BrowserControls;->mLeftPart:Landroid/widget/LinearLayout;

    .line 190
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/openx/sdk/browser/BrowserControls;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/openx/sdk/browser/BrowserControls;->mRightPart:Landroid/widget/LinearLayout;

    .line 192
    iget-object v1, p0, Lcom/openx/sdk/browser/BrowserControls;->mLeftPart:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 193
    iget-object v1, p0, Lcom/openx/sdk/browser/BrowserControls;->mRightPart:Landroid/widget/LinearLayout;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 195
    sget v1, Lcom/openx/common/utils/constants/Constants;->BROWSER_CONTROLS_PANEL_COLOR:I

    invoke-virtual {p0, v1}, Lcom/openx/sdk/browser/BrowserControls;->setBackgroundColor(I)V

    .line 197
    invoke-direct {p0}, Lcom/openx/sdk/browser/BrowserControls;->setAllButtons()V

    .line 199
    invoke-direct {p0}, Lcom/openx/sdk/browser/BrowserControls;->bindEventListeners()V

    .line 201
    iget-object v1, p0, Lcom/openx/sdk/browser/BrowserControls;->mLeftPart:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/openx/sdk/browser/BrowserControls;->mBackBtn:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 202
    iget-object v1, p0, Lcom/openx/sdk/browser/BrowserControls;->mLeftPart:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/openx/sdk/browser/BrowserControls;->mForthBtn:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 203
    iget-object v1, p0, Lcom/openx/sdk/browser/BrowserControls;->mLeftPart:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/openx/sdk/browser/BrowserControls;->mRefreshBtn:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 204
    iget-object v1, p0, Lcom/openx/sdk/browser/BrowserControls;->mLeftPart:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/openx/sdk/browser/BrowserControls;->mOpenInExternalBrowserBtn:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 205
    iget-object v1, p0, Lcom/openx/sdk/browser/BrowserControls;->mRightPart:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/openx/sdk/browser/BrowserControls;->mCloseBtn:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 207
    iget-object v1, p0, Lcom/openx/sdk/browser/BrowserControls;->mLeftPart:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/TableRow$LayoutParams;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    iget-object v1, p0, Lcom/openx/sdk/browser/BrowserControls;->mRightPart:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/TableRow$LayoutParams;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    invoke-virtual {p0, v0}, Lcom/openx/sdk/browser/BrowserControls;->addView(Landroid/view/View;)V

    .line 212
    invoke-direct {p0}, Lcom/openx/sdk/browser/BrowserControls;->setCloseEventListener()V

    .line 214
    invoke-static {}, Lcom/openx/core/sdk/OXMManagersResolver;->getInstance()Lcom/openx/core/sdk/OXMManagersResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/core/sdk/OXMManagersResolver;->getEventsManager()Lcom/openx/sdk/event/OXMEventsListener;

    move-result-object v0

    .line 215
    sget-object v1, Lcom/openx/sdk/event/OXMEvent$OXMEventType;->CLOSE_ACTIVE_INTERNAL_WINDOW:Lcom/openx/sdk/event/OXMEvent$OXMEventType;

    iget-object v2, p0, Lcom/openx/sdk/browser/BrowserControls;->mCloseEventsListener:Lcom/openx/sdk/event/OXMEventsHandler;

    invoke-interface {v0, v1, v2}, Lcom/openx/sdk/event/OXMEventsListener;->registerEventListener(Lcom/openx/sdk/event/OXMEvent$OXMEventType;Lcom/openx/sdk/event/OXMEventsHandler;)V

    .line 216
    return-void
.end method

.method private setAllButtons()V
    .locals 2

    .prologue
    .line 237
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/openx/sdk/browser/BrowserControls;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/openx/sdk/browser/BrowserControls;->mCloseBtn:Landroid/widget/Button;

    .line 238
    iget-object v0, p0, Lcom/openx/sdk/browser/BrowserControls;->mCloseBtn:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/openx/sdk/browser/BrowserControls;->setButtonDefaultSize(Landroid/widget/Button;)V

    .line 240
    iget-object v0, p0, Lcom/openx/sdk/browser/BrowserControls;->mCloseBtn:Landroid/widget/Button;

    sget v1, Lcom/openx/android_sdk_openx/R$drawable;->openx_res_close:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 242
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/openx/sdk/browser/BrowserControls;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/openx/sdk/browser/BrowserControls;->mBackBtn:Landroid/widget/Button;

    .line 243
    iget-object v0, p0, Lcom/openx/sdk/browser/BrowserControls;->mBackBtn:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/openx/sdk/browser/BrowserControls;->setButtonDefaultSize(Landroid/widget/Button;)V

    .line 245
    iget-object v0, p0, Lcom/openx/sdk/browser/BrowserControls;->mBackBtn:Landroid/widget/Button;

    sget v1, Lcom/openx/android_sdk_openx/R$drawable;->openx_res_back_inactive:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 247
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/openx/sdk/browser/BrowserControls;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/openx/sdk/browser/BrowserControls;->mForthBtn:Landroid/widget/Button;

    .line 248
    iget-object v0, p0, Lcom/openx/sdk/browser/BrowserControls;->mForthBtn:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/openx/sdk/browser/BrowserControls;->setButtonDefaultSize(Landroid/widget/Button;)V

    .line 250
    iget-object v0, p0, Lcom/openx/sdk/browser/BrowserControls;->mForthBtn:Landroid/widget/Button;

    sget v1, Lcom/openx/android_sdk_openx/R$drawable;->openx_res_forth_inactive:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 252
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/openx/sdk/browser/BrowserControls;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/openx/sdk/browser/BrowserControls;->mRefreshBtn:Landroid/widget/Button;

    .line 253
    iget-object v0, p0, Lcom/openx/sdk/browser/BrowserControls;->mRefreshBtn:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/openx/sdk/browser/BrowserControls;->setButtonDefaultSize(Landroid/widget/Button;)V

    .line 255
    iget-object v0, p0, Lcom/openx/sdk/browser/BrowserControls;->mRefreshBtn:Landroid/widget/Button;

    sget v1, Lcom/openx/android_sdk_openx/R$drawable;->openx_res_refresh:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 257
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/openx/sdk/browser/BrowserControls;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/openx/sdk/browser/BrowserControls;->mOpenInExternalBrowserBtn:Landroid/widget/Button;

    .line 258
    iget-object v0, p0, Lcom/openx/sdk/browser/BrowserControls;->mOpenInExternalBrowserBtn:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/openx/sdk/browser/BrowserControls;->setButtonDefaultSize(Landroid/widget/Button;)V

    .line 260
    iget-object v0, p0, Lcom/openx/sdk/browser/BrowserControls;->mOpenInExternalBrowserBtn:Landroid/widget/Button;

    sget v1, Lcom/openx/android_sdk_openx/R$drawable;->openx_res_open_in_browser:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 261
    return-void
.end method

.method private setButtonDefaultSize(Landroid/widget/Button;)V
    .locals 2

    .prologue
    const/high16 v1, 0x42480000    # 50.0f

    .line 179
    sget v0, Lcom/openx/common/utils/helpers/Utils;->DENSITY:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setHeight(I)V

    .line 180
    sget v0, Lcom/openx/common/utils/helpers/Utils;->DENSITY:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setWidth(I)V

    .line 181
    return-void
.end method

.method private setCloseEventListener()V
    .locals 1

    .prologue
    .line 220
    new-instance v0, Lcom/openx/sdk/browser/BrowserControls$7;

    invoke-direct {v0, p0}, Lcom/openx/sdk/browser/BrowserControls$7;-><init>(Lcom/openx/sdk/browser/BrowserControls;)V

    iput-object v0, p0, Lcom/openx/sdk/browser/BrowserControls;->mCloseEventsListener:Lcom/openx/sdk/event/OXMEventsHandler;

    .line 233
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    .line 275
    invoke-static {}, Lcom/openx/core/sdk/OXMManagersResolver;->getInstance()Lcom/openx/core/sdk/OXMManagersResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/core/sdk/OXMManagersResolver;->getEventsManager()Lcom/openx/sdk/event/OXMEventsListener;

    move-result-object v0

    .line 276
    sget-object v1, Lcom/openx/sdk/event/OXMEvent$OXMEventType;->CLOSE_ACTIVE_INTERNAL_WINDOW:Lcom/openx/sdk/event/OXMEvent$OXMEventType;

    iget-object v2, p0, Lcom/openx/sdk/browser/BrowserControls;->mCloseEventsListener:Lcom/openx/sdk/event/OXMEventsHandler;

    invoke-interface {v0, v1, v2}, Lcom/openx/sdk/event/OXMEventsListener;->unregisterEventListener(Lcom/openx/sdk/event/OXMEvent$OXMEventType;Lcom/openx/sdk/event/OXMEventsHandler;)V

    .line 277
    return-void
.end method

.method public hideNavigationControls()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/openx/sdk/browser/BrowserControls;->mLeftPart:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 271
    return-void
.end method

.method public openURLInExternalBrowser(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 161
    const-string v0, "starting_external_browser_with"

    invoke-static {v0}, Lcom/openx/common/utils/helpers/Utils;->getLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 164
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 168
    :try_start_0
    invoke-virtual {p0}, Lcom/openx/sdk/browser/BrowserControls;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 169
    const-string v0, "browser_has_started"

    invoke-static {v0}, Lcom/openx/common/utils/helpers/Utils;->getLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 173
    const-string v0, "could_not_handle_intent"

    invoke-static {v0}, Lcom/openx/common/utils/helpers/Utils;->getLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public showNavigationControls()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/openx/sdk/browser/BrowserControls;->mLeftPart:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 266
    return-void
.end method

.method public updateNavigationButtonsState()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/openx/sdk/browser/BrowserControls;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/openx/sdk/browser/BrowserControls$1;

    invoke-direct {v1, p0}, Lcom/openx/sdk/browser/BrowserControls$1;-><init>(Lcom/openx/sdk/browser/BrowserControls;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    return-void
.end method
