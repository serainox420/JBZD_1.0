.class public Lcom/mdotm/android/mraid/MdotMMraidConstants;
.super Ljava/lang/Object;
.source "MdotMMraidConstants.java"


# static fields
.field public static final EVENT_ERROR:Ljava/lang/String; = "error"

.field public static final EVENT_READY:Ljava/lang/String; = "ready"

.field public static final EVENT_STATE_CHANGE:Ljava/lang/String; = "stateChange"

.field public static final EVENT_VIEWABLECHANGE:Ljava/lang/String; = "viewableChange"

.field public static final MRAID_STRING:Ljava/lang/String; = "mraid"

.field public static final STATE_DEFAULT:Ljava/lang/String; = "default"

.field public static final STATE_HIDDEN:Ljava/lang/String; = "hidden"

.field public static final STATE_LOADING:Ljava/lang/String; = "loading"

.field public static isViewable:Z = false

.field public static mraidJS:Ljava/lang/String; = null

.field public static final mraidJSEncoded:Ljava/lang/String; = "PGhlYWQ+DQo8c2NyaXB0IGxhbmd1YWdlPSJqYXZhc2NyaXB0Ij4NCiANCnZhciBFVkVOVFMgPSBtcmFpZC5FVkVOVFMgPSB7DQoJCSJFUlJPUiIgOiAiZXJyb3IiLA0KCQkiUkVBRFkiIDogInJlYWR5IiwNCgkJIlNJWkVDSEFOR0UiIDogInNpemVDaGFuZ2UiLA0KCQkiU1RBVEVDSEFOR0UiIDogInN0YXRlQ2hhbmdlIiwNCgkJIlZJRVdBQkxFQ0hBTkdFIiA6ICJ2aWV3YWJsZUNoYW5nZSINCgl9Ow0KDQp2YXIgbGlzdGVuZXJzID0ge307DQp2YXIgbGlzdG5lck5hbWU7DQoNCm1yYWlkLmFkZEV2ZW50TGlzdGVuZXIgPSBmdW5jdGlvbihldmVudCwgbGlzdGVuZXIpIHsNCmxpc3RuZXJOYW1lPSBTdHJpbmcobGlzdGVuZXIpOw0KbGlzdGVuZXJzW2V2ZW50XSA9IFN0cmluZyhsaXN0ZW5lcik7DQogCX07DQptcmFpZC5yZW1vdmVFdmVudExpc3RlbmVyID0gZnVuY3Rpb24oZXZlbnQsIGxpc3RlbmVyKSB7CQkJCQ0KCQkJCWRlbGV0ZSBsaXN0ZW5lcnNbZXZlbnRdOw0KCQkNCgl9Ow0KDQpmdW5jdGlvbiBmaXJlRXZlbnRGb3JSZWFkeShldmVudCkgew0KdmFyIHRlbXA9ZXZhbCgiKCIrbGlzdGVuZXJzW2V2ZW50XSsiKSIpOw0KdGVtcCgpOw0KCX07DQo8L3NjcmlwdD4="

.field public static mraidState:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "loading"

    sput-object v0, Lcom/mdotm/android/mraid/MdotMMraidConstants;->mraidState:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mdotm/android/mraid/MdotMMraidConstants;->isViewable:Z

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
