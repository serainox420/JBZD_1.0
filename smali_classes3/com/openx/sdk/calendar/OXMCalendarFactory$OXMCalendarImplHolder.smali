.class Lcom/openx/sdk/calendar/OXMCalendarFactory$OXMCalendarImplHolder;
.super Ljava/lang/Object;
.source "OXMCalendarFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/sdk/calendar/OXMCalendarFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OXMCalendarImplHolder"
.end annotation


# static fields
.field public static final instance:Lcom/openx/sdk/calendar/OXMCalendarFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/openx/sdk/calendar/OXMCalendarFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/openx/sdk/calendar/OXMCalendarFactory;-><init>(Lcom/openx/sdk/calendar/OXMCalendarFactory$1;)V

    sput-object v0, Lcom/openx/sdk/calendar/OXMCalendarFactory$OXMCalendarImplHolder;->instance:Lcom/openx/sdk/calendar/OXMCalendarFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
