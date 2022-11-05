.class public Lcom/mdotm/android/view/MdotMActivity;
.super Landroid/app/Activity;
.source "MdotMActivity.java"

# interfaces
.implements Lcom/mdotm/android/listener/MdotMAdActionListener;
.implements Lcom/mdotm/android/listener/MdotMAdEventListener;


# instance fields
.field private adClicked:Z

.field private adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

.field private clickWebView:Landroid/webkit/WebView;

.field private closeButton:Landroid/widget/RelativeLayout;

.field didDismissCalled:Z

.field drawable:Landroid/graphics/drawable/Drawable;

.field handler:Landroid/os/Handler;

.field private imageView:Lcom/mdotm/android/view/MdotMInterstitialImageView;

.field private interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

.field private interstitialListenerId:J

.field private mVideoView:Lcom/mdotm/android/view/MdotMVideoView;

.field private resourceIs:I

.field private rewardString:Ljava/lang/String;

.field videoAdSelectionInProgress:Z

.field private webView:Lcom/mdotm/android/view/MdotMXhtmlView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->clickWebView:Landroid/webkit/WebView;

    .line 68
    iput-boolean v1, p0, Lcom/mdotm/android/view/MdotMActivity;->videoAdSelectionInProgress:Z

    .line 69
    iput-boolean v1, p0, Lcom/mdotm/android/view/MdotMActivity;->didDismissCalled:Z

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/mdotm/android/view/MdotMActivity;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->clickWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mdotm/android/view/MdotMActivity;)Lcom/mdotm/android/listener/InterstitialActionListener;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/mdotm/android/view/MdotMActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->closeButton:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$3(Lcom/mdotm/android/view/MdotMActivity;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/mdotm/android/view/MdotMActivity;->adClicked:Z

    return v0
.end method

.method static synthetic access$4(Lcom/mdotm/android/view/MdotMActivity;Z)V
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/mdotm/android/view/MdotMActivity;->adClicked:Z

    return-void
.end method

.method static synthetic access$5(Lcom/mdotm/android/view/MdotMActivity;)Lcom/mdotm/android/model/MdotMAdResponse;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    return-object v0
.end method

.method private getCloseButtonView()Landroid/widget/RelativeLayout;
    .locals 11

    .prologue
    const/16 v10, 0x9

    const/4 v1, -0x1

    const/16 v9, 0xb

    const/16 v8, 0xa

    const/4 v6, 0x0

    .line 382
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 383
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 387
    invoke-virtual {v0, v6, v8, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 388
    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 389
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 392
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 398
    const-string v0, "iVBORw0KGgoAAAANSUhEUgAAAIcAAACHCAYAAAA850oKAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMDE0IDc5LjE1Njc5NywgMjAxNC8wOC8yMC0wOTo1MzowMiAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6M0M2QTk3ODQ5RjBDMTFFNDk1NEZCNDc0OEYwQTY1QjAiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6M0M2QTk3ODM5RjBDMTFFNDk1NEZCNDc0OEYwQTY1QjAiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBNYWNpbnRvc2giPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDo3Mjg4OEFFNTEyRDUxMUUwOEJDRTkxRUFFNEY5M0MxNiIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDo3Mjg4OEFFNjEyRDUxMUUwOEJDRTkxRUFFNEY5M0MxNiIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PtHLAlcAABnxSURBVHja7J17dFNV1sBP0iRN0wd98vwQZESlrgKjy8ECOsUKKCAKH6C4qgjimj8+PxWRpc4oDwWRAURR15pPiwgyosLywQDydORROupyBqjScRgRPj7E8ur7kbRNvrOv95TdnXOTNLlJk/Tutfa6aZrcxz6/7L3PueeebfJ4PMwQQ2RiNkxgiAGHIQYchhhwGGLAYYgBhyEGHIbEllj8fSDBYjGsFMfS2tJieA5DjLBiSCTDShyIKcj/CfEE+T8DjigHwYS29LXJx3c9Egg86H3x2qTxWQOOKATCpKFm8toXJL6gcKO/3eT/nngDxRJnQJjRVkspLFqA0EZ3oy1VeL9VAk1Mg2KJEyCEJki29LWJgCIDRAYGhqBV/Rtv6XvuWAfFEoNQ4F9/goZakMr+r+VBZHBgj9Eq0RakrRrqJvsyxQIklhiDAisFwKq+1trKIJHlILIcQwuKZgKHi/yNVRaKohoSS5SDIQsbGApoeBvZitc29BkrAckiyUMY6X3Q/IJ6iWa0dfnZUu8ig8RjwEEED98mWCwmjfAhA0JoItomkvesRC0ktJiJ56A5AYUDewysLlWdSF1oi2HBoJgQhMIeHYIknLc3osZzIDAEFDh/wB5BQGD3scXwWM1ms3XkiBHZw0eM6D3o2mtz+vTpk5Gdk5OWlpqaxMXGxWq320ETm5qanFybXS5Xc2Njo6umtrbxwvnzNWfOnKks/+c/zx8qKfnpYEnJBbfbTcEQMDShbRN5z4lAaUaepM1TgR06CkjY3Le/CcYRuPEmCyEJxFNgIECTVLWjbTs4xo8f32fS3Xdfc/0NN/QbeNVVvR0Oh12vE25oaGg6/u9///T3b7459dHHH/9rx44dZzgsTgIFaCPaNhJgnCTktJJQE5AXCbV9fN1462w4KBgJKLmkUAggHGSrwMG9Q1JRUdGvpk2dmnfTTTddnZGRkRqpX1h1dXXdoUOHvv9w06ayDRs2nOCgNCAQGlRtRNtGCSTNkt6NX0DiFQ4cRswkhNiIl3Comoy2ChgDBgzI/P0zz/zmjjvuGNKzZ8/MznbFP//8c+Vnn312eNkf//j18ePHLyIY6lU46gkwAiIXCTXCi/gEJN7g8BVGbMRTCBhS1NdCHfk33dRr4cKFt3DJ4zlD1PW6eM7Ssn///rJFixbtP1RaehaBIbQOvYc9iasjYSae4PAVRkQISULeIVkFQ2jy4Ly8HitWrCgsKCjIS+AS6IFPnDjBjh49ysrLy9mPP/7ITp8+zc6fP8/q6uoUra+vZ1VVVSw9PZ0lJyezlJQURXNycljfvn3ZlVdeyQYNGsQGDx7MuLcK3Phcvvjii7Inn3xy79GysgoEhtB65E0aSajxG2biBQ4ZGDjhtCMoMBCQO6RkZmamv7JqVcGUKVPyExMTrQEkjezjjz9m27dvZzt37mQXL17UjfCsrCw2duxYRfn5MJ7s+v2O0+ls3rx5c+njc+Z8cenSpSoVjFoJKA3Ii9Aw4wVIPMAhA0MknXbiLVKJpsyaNeu6JYsXT+jevXuGvwN98sknbM2aNWzr1q0RCyETJkxg/BzZpEmT/H723Llzlc/Nn7+1uLj4OwQI1nqSj+Bk1QuQWIdDCwwbyS2El0hTNZX/Iru9v3Hj+HHjxt1oMpl89RbYunXrGI/vjP8qOy3P4N6NLViwgM2YMYN169ZN83Ngc+7Rvr53+vRt3MNVq1DUqFqLvEgjSVa9AIkHOCgYIr9IJt4CoACrpg7Pz+/LG3wqj++9tHZcWVnJ1q5dy+bOnRt14/8rV65kM2fOZLxLrfkZnvucfeCBBzbxhPW0CkU1AqQW5SM0D1EAiXU4TD48BvUW3VRNmzdv3g0L5s+/MykpKVFrx6+//jp74oknWHNzM4tWsVqt7OWXX2aPPPKI5mcaGxudi55//i/Lly//RgWjmkAivIiWB/HEIhwiDuBh8EQJGABEugDj7TVrxvBf02+1wsjBgwfZtGnT2NmzZ1msSM+ePdmmTZvYyJEjNcPM+vXr98166KFdCJAqdUsBcbL20wNYKIB0xqMJsgEuK+qqJhMw0i0WS8bOHTum8HgtBQM8xLJly9jNN98cU2CoA2PKecP5u1wub2Px64XrhusHOwibiBCLBv0SVTviG4fY3vo2Ypg8hwgneHALewwRQhRD2Gy2jN27d98zcsSIXNnOysrK2MMPP8y+/PJLFusybNgw9tZbb7G8vDy5ZywpKR89evT7HKJK1XtUolBDQ4zwIEGHl0iHFZxniHEMcQ9E5BfpKhgZ8EvZs2fPvTePHJmrFUbGjBkDsZnFi/Bciu3atUszzHBAjhUWFr7f0tJSqcIhQBF5iBiSF+MgQecfkQwrOJzQIXE8jiES0LRtW7dO0gJDhJF4AkNNQtvCjEzAg4JdsJ1QeHGwy/NVLCjE6B5ewpFz+Msz0nDyedttt/1atpP77ruPPf300yyeBa4PrlMmYBewjwYgvvKPqITDRHIN3G11kG5r6jPPPHMj9EpkO4LeyMaNG1lXELhOuF6ZgH3ATthuqh0d7PKkJgFIIM/hdEpCSrutNjTIlYJyDLilnsnj6dVbPv30IbvdbpN5jK4CBpbp06ez9957z+v9pqYm18S77lqzd+/ef/E/L6kqcpA6NEjmCqZ7G6mcg/ZQZGMaqenp6RnvrF07VQYGxOCuCIbwILIcBOwE9gK7scsjyWJkWcx+sxDvETVhhY5pWEiuge+0pr735z9P6N27d7asVxLvOUYgOQjYgQrYi9ttPAorIrTg3MOi99iHWUevQcHAuYais2fPzuXd0uvpl48cOcJuvfVWZghT7AD2oMLtdsOsWbNyWfvpDA7kPTAguniPUHMOnGtYkLdIQYNcWaDcLXYvP3bsse7du6fjHcBEG+jWHT582CBDlaFDhyoeBCYdYTl37lzVoNzcV6uqqs7xPy+qWokGyMRkoZZAc49w5xwmybgGnrijhJTXVq++lYIB8sYbbxhgEAF7wI1FKmA/sCNrP20S91zwuIcpGjwH9hoO5DUyVa+RPWTw4H6lpaWP0hlc8OsAr2GIXA4cOOA1igozyvLz81cfOXr0FP/zguo9LiHv0UC8R6d4DvqkO01E2yYIL1++vFA2tW/q1KkGAT5ENv4BdgR7MjILXyPvCKn3EmpYoY8r4tldSjY9PD+/F0wGpl8Etwl3Kw3RFrj7LAsv3J6Dwa6s/fM7OLTokpiGElZMaMBL5BhpKAmF7mr29m3b7hk7dmy7HgrM4OLxk7X4cGlBkW42K3Mn4Lb4hQsXItKA2dnZzGazKaC73W7d92/h9ueJqNeMsl27dv39jnHjPlDDygVVxRwQMUnZ5S+0hCOsmDQS0XZPpw0cODCLd80G0y/D1D49wbDb7WzJkiVKA505c0Z55OC7775TRh3DJbBvOAYcC44Jx4ZzgHPRU8BOb7/9ttf7o0aNGgz2ZZcf/sLPCNPENDgPAp7Dl5oTEmRq4prA1c41nWtvrtdwHcZ1PNcZXOfyi/rcQ6S2tla2jlbQmpSU5OGJrUdLVq5c6TGZTLodD/YF+9QSOBc4Jz2vEbSmpsbrWO+8885fwc6qvcer9r9GbY90tX0santJ29JX24cCBxzUwTWL6xVc87jewnUy199ZrNbnKioqLtELeuWVV3Q1Gv+1evwJHFMPQGAfsC9/8uKLL+oOh+y4YF+wM9hbtfstajtcobaLI9JwwIHMXG1cU7l25zqA6/VcR3O9j+tjMx588G2Z4TIzM3UzGHdeYCBPIPLqq6+GBEigYIDwUKOcm55wpKenS4/14MyZa8Heqt1Hq+3wK7VdUtV2MmsB4rPtdco58EIqit4zbZpXD+Wjjz7S9bmSHj16KIltIPLoo48y3rjM1/MvmhfLv7Nq1Sr22GOPBZykwrnpKfCoJtjPq7s7dWoetjtrfxs/pJwjFDjo4mxtK+7wXkNifn7+tfRLPEbqajCn09mhzwcDSEfBECKbSByqQCJPZfjw4deAvdEPlC5xlRDJhBTck5VrMtccrldy/TXXQq73cv3vCXfe+Sfq/hoaGnSPw6C8x+DpqAQaYjoSSrDAOYXjWkHr6+u9jjfxrrv+B+yu2r9QbY8r1fZJVtsrImGFrv+JV/NTvMfUKVOupl/avHlzWLqUixcv7vB3AvEgwXqMYM8pUJHZ8T8nTx7I2q+BRhfFCyq0mIMAg95sw8s8Kic4ZOjQfvSLO3bsCIuxYJIM9wS6AhIKGHAu4ZywJLOjam8ra7+CYoLkJpwpnGFFjG8kcc3g+h9cr+N6M9dJ0KWyJSY+x11fI3V9WVlZYXO14P4hVAQjNMQEG0r06BEFomBHKmBv1KWdpLbHdWr7ZKjtlSALLXp2Zen4Rj+ug7kWcJ3K9ZFRo0atpid//PjxsBpML0CiHQyhP/zwg9fxCwoKXgX7q+1QoLZLP3/jHb7aPtgHYWXLSysZcv7w4V5PxX/77bdhv8cBF/P444+3hYyOhhjZ60Bl9erVyrEjVfodViiiqwvBMpr7Dxz4kXmv1hz0DThLCGBQQJSTgnU+6RdgqaVIiF6ARDMYwp533313u/dUuycw74V4TcECEmxvhWkAktCnTx+v2V4nT56MmOEEINBo4ZbOAAME1jSjAgvvMu3F/xmLUG9FVs6irWxFjx490gO5mFgHpLPA0LKnancKRyB1ZXQfITUzeb0TU1pamtfqaXBbO9ISTkA6EwwQ2VwVbvckSZvQ6lQRGT6nuYcYTjenpqYmRQMc4QKks8EAgck/VLjdHciLU0hYpOAwaYQY5T3ZXFFY47OzRE9AogEMEFhGkwq3u4X5LnJoiqTnkOYhVqvVqwfU2Uso6AFItIChBYcVFiALIb/QKyH1+T/ZqsIdvXtqiG+R3fGFAVAfbRTU8HlH4fBbgBeWc5a4vE41JtwrgfsowY5liHGQYOeD6C0woZkKN7vbRxt5Ami/sISVdkO7zc3NXjOHYZmjWAYj2gCRLafd/Muam75q3EYkIfXIoBDvwRNZ9Av0mc9YBCOaAJHBwe3eotE2LBivEarnoAV2lYVTa2trvbJPqDwQD2BECyCyqZHc7g3sci06Wg83Yp6DMe+y3W11QWpqaho6G45wghENgMAcVSrc7o1MXiTZEywgwSSkskrNbdWYKyoqquiXoFZJPIHR2YDI7KnanRY6doeSh4SSc0grNZ85c8YLjv79+0c9GDCOEcw4SGcAIoMDqlcy7SrYQeUcliDhkIGhPPIP5TXpF6DCUbSDIW71wyBXR6cHimNGapBMZk/V7m3twORl0jvY0nEwE6wrTRMEBXtSAbvrPRMsLuaQ6t2YoQCi9+OerBPnkJpDCCu0xruyDjeXZijIS78E9dDCIfC0ezCzxH3dK4H35syZE9SsdjiXcD7dD+vAUwF7qxWy29qBJKVBhZVgh89pviFOSCkWc+Tw4VP0i7fffntYjPXss8/qCoYegARzToGKzI6qvUXpdAGIV2XJDgMSqSfe4EmtSLhYvfOCYENMdnZ2l3zijZFR0RZEraJQ272qqqqODvlCFUU9paM39IK57R6sB5HdHAtVwH506BxKpW/fvv3/sP1JaAn6PksocOAubDtAePxzlpaWfk+/BAXx9JSKioqAZ5mFMh+jo4BADVs4N71FZr9Dhw59D/aWgIG7tBGHA+cdAgxRxdD54aZNZfRLkydP9lktsaMCswOKi4v9fg4aNdQxiI4A8uabbzLJzIWQBCplg/2oqHZ2ItWvSGCsr+wDSyyVlJRoxv5Vq1bpvuwT7FNL4Fy46++yK/tgOHyuCbZ27dq/hntNMFC73a4stXTu3Lm245SXl3uKiorCNt4A+4Zj4NV8li5dqpxLOI4Xa2uCyZZ+Er2We7j+1zXXXrvM5XI104tasWJFWAwISy316dMnbD0FmcKx4Jh6L/OEFexFBewK9gU7q/YWvZQBgS755A8OvdchFaVAYQlEuE+fFcl1SONRYEouJN2xtA4p7bWI3opIiprUE2xcvHjxATS/URG4UKjUbIh/gXVCKBhgzxdeeOEA+6VKQgO7XC3BKenGBn8zM0TPgeu5ibXOxSrGmcJ77Nq5897CwsKhdAe9evUylrj2IbAas6zA8t69ew+PGTv2fdVrQF9elPaC0qL17HJZUb/jHOHyHHTSD/Yeou4pnGjDvHnz9kKMpDuAEt6GaIvMPmDHp5566nPVY9QjW2OvQSf5BCV6zD53IzhcKKwIl1d/5OjRc5s3b/4b/SKUi3jppZcMCiQCdpEVJQY7/uPw4Qrxw1Pt3ITGOFpYiHNH9QgrIrQwFmKlJjCCrHRVV5UhQ4YotWhSUlLavR9rlZo8Eu+BQ4twfXX8gqqfmz//LxRGMMC6devYL0/zGQJ2gPVaKRhgN7Af2JFdLhnaoBFSgp4aqHdYYRp5h+ix1AktLi4+Bl0w2S/l888/N8jgAnaAGm9UwG5gP2xP1GWV5Rshi15PvAXkPbjWFt1//7affvrpgpF/BJ5ngL3AbmC/SHkNPT0H7r2IcQ/hPdrAAL3EZdZDD22CSst0BzwLD+ssqmgWuG64fipOp9MF9rr0y6LxtQSQJuZdz023Gc56hhXhPfCgWBPq0rYBsnv37hOLlyzZKkuGoWR3V6v9BtcrK1UO9nlh8eKtYC8JGKKXQqcFMhZFYUU27oFv4+Pco1YdqKldunTp1+vXr98n29GHH37YZTwIXCdcr0zAPmAnbDeSa7gkg11R5zlk4x6tJPeoRxcJGXcNd5e79uzZ8w/ZTuCXFO85CFyfzGOAgF3APshewnPUk1yjVa9xDb3HObTGPmg5UVHeEmqxw/B6ujoGkmGz2TK527xn5IgRubKdQX9/9OjRjOcocQMF1IHj1yxNPpVrLik5xq/5A5fLJYbFQauQ9xCjorIR0Q5JuCtSa4UXtyQ5xeEFfg3V3ACVYAhuEOlKtmDAr776ig0bNiwuwIDrgOvxAUa5CoYY3KqWhBMnyTN0DSfhhIOOffgKL/BrqAJDFBYWbtQKMXl5eWzfvn0xH2bg/OE64Hq0QgnYQQWjingLrXAStucvwxFWcHhRdsHaD6/D3A+lvr0aZsQcENimvbN27ZiioqLfaj2YDGEGsvtYupsLd1fhJpqWt4A22LBhw74HZ87EOUYV8RqyrmtAQ+TRFFZ8dW9dkrGPahxXuYF2/P4Pf9jc2Njo1AozcBv7tddei/ohdzg/OE84Xy0w4DrheuG6VSCELWRguMLVbY2055AlqGLuhyhWl6xqKkpWwYOkDs/P7/vuu+9O69+/f0+tHcOMMqh7Nnfu3KgDY8WKFcqjBJmZmZqfOXnyZMX999//waHS0tPoh1JDeib1rP1EnrZwwn/1nlDbx5fniBQcTAIIrnuPw0yaqqkOh6Pb+xs3jh83btyNvta/qK6uVm7eLVy4UAGmswRmbME5zJgxg3Xr1k3bpXKbb9++/et7p0/f1tDQUI1ysBqNgS7Z4wYsHuDwBYgVAeIgXkRoyuzZs6974fnnJ3Tv3t3vQy9QXhO8ydatWyMGBTyJBl5C9lwJFbjtDndXi4uLv0OhtZZ4iwYyAioFQ4/2iQY4tACxoDBjR4CkIFUA4e45/ZVVqwqmTJmSL1tCmwqs8gvF8rZt2wbT6pSn0PSSrKwsxnsVbPz48Yyfj3R1PyqwyiI/n9LH58z54tKlS1UIDHyXtZ7J77RKwYgnOLQAoXkI9iIUlOTBeXk9eDwvLCgoyJOtlqwlJ06cUCYUHTt2TClJcerUKeWRRbifBctvQ2iCp9RglxASYO1UyBegeHC/fv2UpZZyc3OV6QW0SpJP47e2unn3tYznRXuOlpVVoGQcA0HvsuL8QhOMeINDBgj2IjbkRUQu4hBgIHXwhLXXggULbuGSZ7PZLCzKxOVytezfv79s0aJF+3nCeZZdnrpQjwBpILmFU9Ij0QQjHuGgkJglYUYkqzgfcSBYktX3kwYOHJj19FNP/YYnrUMCyUnCLTynqOTJ5pGXli376vjx4xcZmWyNtjivwEknBUMKRbzD4S/M4FCDIUkiwCgQmc1mR1FR0QCo7Q4lvHloSIkUELAMAjztDg81b9iw4YTb7W5AjY5BaGTek4KdJOls9ectugoc/sKMRQKJHQFiR1uhiVDbfeLEiX3vmjhx4JChQ68YeNVVvXnSaNfrhHmy2wRLLR05fPh/P92y5fiWLVtOq8sgOBEUQhuRNkmgaOlIGOlScIiT48ehhQUTSKixopxEgIKBwe/ZkFo5LNaRI0Zkjxg5sk/uoEE5UCwvJyeHO5dujpSUFDvUKuEJqM0Ej9Bz4QmqCxaar6ura+JeoeH8+fPVsM7nsfLy8yUHD545WFJyQV2Dq92iNQgOJwEBA+FCnoKuoeEOFIouBQcBhJYntSC1EVBsBBovOBBgWjVXafEa+sAWXvwVL8omgwND4CJAuJCnwLfaO+QtulJYCTTU0HCDk1dfWwyGhXnXXTWTYX58+9vNvBfibdEAxNe2RSN8BL+YWxh+nFSirguIDCUaShjTzNpPAbCgBrCQ8CNeJ0g8hoW1L3caqOdwkzCAV+3DoFAYsJfQWvrRE42NEK1wYIPJIDGhBkpg3mXTEyReQlZzNVA43JLwQr0JXVpaax3yqIciFuDwBYkJNRYNO2YCgew9E/NfytsjaVQ3afBWH+/JqhbEBBSxBIeWQXFeYJb0dGi+YpYA4a8gL61Z4pGEBzeCFlcpcMciELEKhy9QWlGDmJB3MfmAQeYxTBoQun3AItOYBSIe4AjEo9BeT0cL8no0chAmec3iBYh4g8MfKCaNBtOqv+oJYL9xB0JXgIMZDaufmA0TGGLAYYgBhyH6iSkSBesMMTyHIQYchhhwGGLAYZjAEAMOQww4DNFP/l+AAQDTtPPxDrvuGQAAAABJRU5ErkJggg=="

    .line 399
    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMActivity;->StringToBitMap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 400
    const/16 v0, 0x2c

    .line 401
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v1}, Lcom/mdotm/android/model/MdotMAdResponse;->getCompanion()Lcom/mdotm/android/vast/Companion;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 402
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v1}, Lcom/mdotm/android/model/MdotMAdResponse;->getCompanion()Lcom/mdotm/android/vast/Companion;

    move-result-object v1

    iget-object v1, v1, Lcom/mdotm/android/vast/Companion;->closeBtnSize:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 403
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v1}, Lcom/mdotm/android/model/MdotMAdResponse;->getCompanion()Lcom/mdotm/android/vast/Companion;

    move-result-object v1

    iget-object v1, v1, Lcom/mdotm/android/vast/Companion;->closeBtnSize:Ljava/lang/String;

    .line 405
    const-string v4, "%"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 406
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CloseBtnArry"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    array-length v4, v1

    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    .line 409
    int-to-double v4, v0

    const/4 v6, 0x0

    :try_start_0
    aget-object v1, v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v6

    mul-double/2addr v0, v4

    double-to-int v0, v0

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "CloseBtnsize"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Closebtn size"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v4}, Lcom/mdotm/android/model/MdotMAdResponse;->getCompanion()Lcom/mdotm/android/vast/Companion;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 420
    invoke-direct {p0, v0}, Lcom/mdotm/android/view/MdotMActivity;->getPixels(I)I

    move-result v4

    invoke-direct {p0, v0}, Lcom/mdotm/android/view/MdotMActivity;->getPixels(I)I

    move-result v0

    .line 419
    invoke-direct {v1, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 423
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v0}, Lcom/mdotm/android/model/MdotMAdResponse;->getCompanion()Lcom/mdotm/android/vast/Companion;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v0}, Lcom/mdotm/android/model/MdotMAdResponse;->getCompanion()Lcom/mdotm/android/vast/Companion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mdotm/android/vast/Companion;->getCloseLoc()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 424
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v0}, Lcom/mdotm/android/model/MdotMAdResponse;->getCompanion()Lcom/mdotm/android/vast/Companion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mdotm/android/vast/Companion;->getCloseLoc()Ljava/lang/String;

    move-result-object v0

    .line 426
    if-eqz v0, :cond_1

    const-string v4, "topleft"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 427
    invoke-virtual {v1, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 428
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 429
    const-string v0, "close btn top left"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 453
    new-instance v0, Lcom/mdotm/android/view/MdotMActivity$4;

    invoke-direct {v0, p0}, Lcom/mdotm/android/view/MdotMActivity$4;-><init>(Lcom/mdotm/android/view/MdotMActivity;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 464
    return-object v2

    .line 411
    :catch_0
    move-exception v1

    .line 412
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Number format exe"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 431
    :cond_1
    if-eqz v0, :cond_2

    const-string v4, "bottomleft"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 432
    invoke-virtual {v1, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 433
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 434
    const-string v0, "close btn bottom left"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 436
    :cond_2
    if-eqz v0, :cond_3

    const-string v4, "bottomright"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 437
    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 438
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 439
    const-string v0, "close btn bottom right"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 442
    :cond_3
    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 443
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 444
    const-string v0, "close btn top right"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 448
    :cond_4
    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 449
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1
.end method

.method private getPixels(I)I
    .locals 3

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "scale = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 470
    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "result px = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    return v0
.end method

.method private getVideoLayout()Landroid/widget/RelativeLayout;
    .locals 6

    .prologue
    const/4 v3, -0x1

    const/4 v5, -0x2

    .line 336
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 337
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 340
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 344
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 347
    const/4 v3, 0x3

    const/16 v4, 0xb

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 348
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 350
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 351
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 353
    new-instance v2, Lcom/mdotm/android/view/MdotMActivity$3;

    invoke-direct {v2, p0}, Lcom/mdotm/android/view/MdotMActivity$3;-><init>(Lcom/mdotm/android/view/MdotMActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 368
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 371
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 372
    iget-object v3, p0, Lcom/mdotm/android/view/MdotMActivity;->mVideoView:Lcom/mdotm/android/view/MdotMVideoView;

    invoke-virtual {v3, v2}, Lcom/mdotm/android/view/MdotMVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMActivity;->mVideoView:Lcom/mdotm/android/view/MdotMVideoView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 374
    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMActivity;->getCloseButtonView()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 375
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 376
    return-object v0
.end method


# virtual methods
.method public StringToBitMap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 485
    .line 486
    const/4 v0, 0x0

    .line 484
    :try_start_0
    invoke-static {p1, v0}, Lcom/mdotm/android/utils/MdotMBase64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 487
    const/4 v1, 0x0

    .line 488
    array-length v2, v0

    .line 487
    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 492
    :goto_0
    return-object v0

    .line 490
    :catch_0
    move-exception v0

    .line 491
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 492
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public adClicked()V
    .locals 2

    .prologue
    .line 532
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMActivity;->adClicked:Z

    .line 533
    const-string v0, "clicked on ad"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/InterstitialActionListener;->onClick()V

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->mVideoView:Lcom/mdotm/android/view/MdotMVideoView;

    if-eqz v0, :cond_1

    .line 542
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->mVideoView:Lcom/mdotm/android/view/MdotMVideoView;

    iget-object v1, p0, Lcom/mdotm/android/view/MdotMActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mdotm/android/view/MdotMVideoView;->stopVideo(Landroid/os/Handler;)V

    .line 546
    :cond_1
    return-void
.end method

.method clicked()V
    .locals 2

    .prologue
    .line 595
    const-string v0, "  Selected to clicked  "

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v0}, Lcom/mdotm/android/model/MdotMAdResponse;->getLandingUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 599
    iget-boolean v0, p0, Lcom/mdotm/android/view/MdotMActivity;->videoAdSelectionInProgress:Z

    if-nez v0, :cond_0

    .line 600
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMActivity;->videoAdSelectionInProgress:Z

    .line 601
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v0}, Lcom/mdotm/android/model/MdotMAdResponse;->getLandingUrl()Ljava/lang/String;

    move-result-object v0

    .line 602
    new-instance v1, Lcom/mdotm/android/view/MdotMActivity$5;

    invoke-direct {v1, p0, v0}, Lcom/mdotm/android/view/MdotMActivity$5;-><init>(Lcom/mdotm/android/view/MdotMActivity;Ljava/lang/String;)V

    .line 642
    invoke-virtual {v1}, Lcom/mdotm/android/view/MdotMActivity$5;->start()V

    .line 649
    :goto_0
    return-void

    .line 644
    :cond_0
    const-string v0, "ad selection under progress"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 647
    :cond_1
    const-string v0, "selected ads landing url is null"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public didShowInterstitial()V
    .locals 0

    .prologue
    .line 721
    return-void
.end method

.method public getViewable()Z
    .locals 1

    .prologue
    .line 823
    const/4 v0, 0x1

    return v0
.end method

.method public leaveApplication()V
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/InterstitialActionListener;->onLeave()V

    .line 552
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 499
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 500
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 88
    const-string v0, "onCreate is called"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->handler:Landroid/os/Handler;

    .line 94
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->clickWebView:Landroid/webkit/WebView;

    .line 95
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->clickWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 96
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->clickWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/mdotm/android/view/MdotMActivity$1;

    invoke-direct {v2, p0}, Lcom/mdotm/android/view/MdotMActivity$1;-><init>(Lcom/mdotm/android/view/MdotMActivity;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 180
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 181
    const-string v2, "response"

    .line 180
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/mdotm/android/model/MdotMAdResponse;

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    .line 182
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 183
    const-string v2, "reward"

    .line 182
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->rewardString:Ljava/lang/String;

    .line 184
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 185
    const-string v2, "InterstitialActionListenerId"

    .line 184
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mdotm/android/view/MdotMActivity;->interstitialListenerId:J

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "listener id "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/mdotm/android/view/MdotMActivity;->interstitialListenerId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/mdotm/android/utils/MdotMUtils;->getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;

    move-result-object v0

    .line 188
    iget-wide v2, p0, Lcom/mdotm/android/view/MdotMActivity;->interstitialListenerId:J

    invoke-virtual {v0, v2, v3}, Lcom/mdotm/android/utils/MdotMUtils;->getInterstitialActionListener(J)Lcom/mdotm/android/listener/InterstitialActionListener;

    move-result-object v0

    .line 187
    iput-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

    .line 189
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    if-nez v0, :cond_0

    sget-object v0, Lcom/mdotm/android/vast/Companion;->htmlResource:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "ScreenOrientation"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 191
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMActivity;->setRequestedOrientation(I)V

    .line 195
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v0}, Lcom/mdotm/android/model/MdotMAdResponse;->getResourceType()I

    move-result v0

    iput v0, p0, Lcom/mdotm/android/view/MdotMActivity;->resourceIs:I

    .line 199
    :cond_2
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 201
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 206
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    const/high16 v0, -0x1000000

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "resource type "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/mdotm/android/view/MdotMActivity;->resourceIs:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "resource getAdType "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "resource getAdType "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v3}, Lcom/mdotm/android/model/MdotMAdResponse;->getAdType()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    iget v0, p0, Lcom/mdotm/android/view/MdotMActivity;->resourceIs:I

    sget v3, Lcom/mdotm/android/http/MdotMNetworkManager;->imageResource:I

    if-ne v0, v3, :cond_5

    .line 214
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v0}, Lcom/mdotm/android/model/MdotMAdResponse;->getAdType()I

    move-result v0

    sget v3, Lcom/mdotm/android/utils/MdotMUtils;->AD_WITH_BANNER_OR_XHTML_OR_VIDEO:I

    if-ne v0, v3, :cond_5

    .line 215
    new-instance v0, Lcom/mdotm/android/view/MdotMInterstitialImageView;

    iget-object v1, p0, Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-direct {v0, p0, v1, p0}, Lcom/mdotm/android/view/MdotMInterstitialImageView;-><init>(Landroid/content/Context;Lcom/mdotm/android/model/MdotMAdResponse;Lcom/mdotm/android/listener/MdotMAdActionListener;)V

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->imageView:Lcom/mdotm/android/view/MdotMInterstitialImageView;

    .line 216
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->imageView:Lcom/mdotm/android/view/MdotMInterstitialImageView;

    iget-boolean v0, v0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->adLoadSuccess:Z

    if-nez v0, :cond_4

    .line 217
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->onLoadError()V

    .line 219
    const-string v0, "Failed to load interstitial banner ad"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    :goto_1
    invoke-virtual {p0, v2}, Lcom/mdotm/android/view/MdotMActivity;->setContentView(Landroid/view/View;)V

    .line 290
    :goto_2
    return-void

    .line 192
    :cond_3
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "ScreenOrientation"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_1

    .line 193
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 222
    :cond_4
    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMActivity;->getCloseButtonView()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->closeButton:Landroid/widget/RelativeLayout;

    .line 223
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->imageView:Lcom/mdotm/android/view/MdotMInterstitialImageView;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 224
    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMActivity;->getCloseButtonView()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 225
    const-string v0, "Call report impression imageresource"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    invoke-static {}, Lcom/mdotm/android/utils/MdotMUtils;->getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v1}, Lcom/mdotm/android/model/MdotMAdResponse;->getImp_pixel()Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-virtual {v0, v1, p0}, Lcom/mdotm/android/utils/MdotMUtils;->reportImpression(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1

    .line 232
    :cond_5
    iget v0, p0, Lcom/mdotm/android/view/MdotMActivity;->resourceIs:I

    sget v3, Lcom/mdotm/android/http/MdotMNetworkManager;->htmlResource:I

    if-eq v0, v3, :cond_6

    .line 233
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v0}, Lcom/mdotm/android/model/MdotMAdResponse;->getResourceType()I

    move-result v0

    sget v3, Lcom/mdotm/android/http/MdotMNetworkManager;->gifImageResource:I

    if-eq v0, v3, :cond_6

    .line 234
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v0}, Lcom/mdotm/android/model/MdotMAdResponse;->getResourceType()I

    move-result v0

    sget v3, Lcom/mdotm/android/http/MdotMNetworkManager;->imageResource:I

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    .line 235
    invoke-virtual {v0}, Lcom/mdotm/android/model/MdotMAdResponse;->getAdType()I

    move-result v0

    sget v3, Lcom/mdotm/android/utils/MdotMUtils;->AD_ICON_WITH_TEXT_MESSAGE:I

    if-ne v0, v3, :cond_7

    .line 236
    :cond_6
    const-string v0, "loading html page"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    new-instance v0, Lcom/mdotm/android/view/MdotMXhtmlView;

    iget-object v3, p0, Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-direct {v0, p0, v3, p0}, Lcom/mdotm/android/view/MdotMXhtmlView;-><init>(Landroid/content/Context;Lcom/mdotm/android/model/MdotMAdResponse;Lcom/mdotm/android/listener/MdotMAdActionListener;)V

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->webView:Lcom/mdotm/android/view/MdotMXhtmlView;

    .line 238
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->webView:Lcom/mdotm/android/view/MdotMXhtmlView;

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Lcom/mdotm/android/view/MdotMXhtmlView;->setGravity(I)V

    .line 239
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->webView:Lcom/mdotm/android/view/MdotMXhtmlView;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 241
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v0}, Lcom/mdotm/android/model/MdotMAdResponse;->getCompanion()Lcom/mdotm/android/vast/Companion;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v0}, Lcom/mdotm/android/model/MdotMAdResponse;->getCompanion()Lcom/mdotm/android/vast/Companion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mdotm/android/vast/Companion;->getSkipOffset()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 242
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v0}, Lcom/mdotm/android/model/MdotMAdResponse;->getCompanion()Lcom/mdotm/android/vast/Companion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mdotm/android/vast/Companion;->getSkipOffset()Ljava/lang/String;

    move-result-object v0

    const-string v3, "[0-9]{2}:[0-9]{2}:[0-9]{2}[.]*[0-9]*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 245
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v0}, Lcom/mdotm/android/model/MdotMAdResponse;->getCompanion()Lcom/mdotm/android/vast/Companion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mdotm/android/vast/Companion;->getSkipOffset()Ljava/lang/String;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 246
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0xe10

    aget-object v3, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    add-int/2addr v1, v3

    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-int v0, v4

    add-int/2addr v0, v1

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "skip offset"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    :goto_3
    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMActivity;->getCloseButtonView()Landroid/widget/RelativeLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/mdotm/android/view/MdotMActivity;->closeButton:Landroid/widget/RelativeLayout;

    .line 252
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMActivity;->closeButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 253
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMActivity;->closeButton:Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 254
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 255
    new-instance v3, Lcom/mdotm/android/view/MdotMActivity$2;

    invoke-direct {v3, p0}, Lcom/mdotm/android/view/MdotMActivity$2;-><init>(Lcom/mdotm/android/view/MdotMActivity;)V

    .line 271
    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    .line 255
    invoke-virtual {v1, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_1

    .line 274
    :cond_7
    iget v0, p0, Lcom/mdotm/android/view/MdotMActivity;->resourceIs:I

    sget v1, Lcom/mdotm/android/http/MdotMNetworkManager;->videoResource:I

    if-ne v0, v1, :cond_8

    .line 275
    new-instance v0, Lcom/mdotm/android/view/MdotMVideoView;

    iget-object v1, p0, Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-direct {v0, p0, v1, p0}, Lcom/mdotm/android/view/MdotMVideoView;-><init>(Landroid/content/Context;Lcom/mdotm/android/model/MdotMAdResponse;Lcom/mdotm/android/listener/MdotMAdActionListener;)V

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->mVideoView:Lcom/mdotm/android/view/MdotMVideoView;

    .line 276
    invoke-direct {p0}, Lcom/mdotm/android/view/MdotMActivity;->getVideoLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 277
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 280
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "This format is not supported "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMActivity;->adResponse:Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-virtual {v1}, Lcom/mdotm/android/model/MdotMAdResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->onDismissScreen()V

    goto/16 :goto_1

    .line 287
    :cond_9
    const-string v0, "Ad response is null"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->onDismissScreen()V

    goto/16 :goto_2

    :cond_a
    move v0, v1

    goto :goto_3
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 322
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->webView:Lcom/mdotm/android/view/MdotMXhtmlView;

    if-eqz v0, :cond_0

    .line 323
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->webView:Lcom/mdotm/android/view/MdotMXhtmlView;

    .line 325
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 326
    invoke-static {}, Lcom/mdotm/android/utils/MdotMUtils;->getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;

    move-result-object v0

    .line 327
    iget-wide v2, p0, Lcom/mdotm/android/view/MdotMActivity;->interstitialListenerId:J

    .line 326
    invoke-virtual {v0, v2, v3}, Lcom/mdotm/android/utils/MdotMUtils;->removeInterstitialActionListener(J)V

    .line 329
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->mVideoView:Lcom/mdotm/android/view/MdotMVideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->mVideoView:Lcom/mdotm/android/view/MdotMVideoView;

    iget-object v1, p0, Lcom/mdotm/android/view/MdotMActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mdotm/android/view/MdotMVideoView;->stopVideo(Landroid/os/Handler;)V

    .line 332
    :cond_1
    return-void
.end method

.method public onDismissScreen()V
    .locals 2

    .prologue
    .line 556
    const-string v0, "onDismiss is called"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 557
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMActivity;->didDismissCalled:Z

    .line 558
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/InterstitialActionListener;->onDismiss()V

    .line 567
    :goto_0
    const-string v0, "hidden"

    sput-object v0, Lcom/mdotm/android/mraid/MdotMMraidConstants;->mraidState:Ljava/lang/String;

    .line 568
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mdotm/android/mraid/MdotMMraidConstants;->isViewable:Z

    .line 569
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->webView:Lcom/mdotm/android/view/MdotMXhtmlView;

    const-string v1, "stateChange"

    invoke-virtual {v0, v1}, Lcom/mdotm/android/view/MdotMXhtmlView;->fireMraidEvent(Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->webView:Lcom/mdotm/android/view/MdotMXhtmlView;

    const-string v1, "viewableChange"

    invoke-virtual {v0, v1}, Lcom/mdotm/android/view/MdotMXhtmlView;->fireMraidEvent(Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->webView:Lcom/mdotm/android/view/MdotMXhtmlView;

    invoke-virtual {v0}, Lcom/mdotm/android/view/MdotMXhtmlView;->loadblankview()V

    .line 572
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->finish()V

    .line 573
    const-string v0, "loading"

    sput-object v0, Lcom/mdotm/android/mraid/MdotMMraidConstants;->mraidState:Ljava/lang/String;

    .line 575
    return-void

    .line 563
    :cond_0
    const-string v0, "InterstitialActionListener is null. So ignoring the interstitial dismiss callback"

    .line 562
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onFailedToReceiveInterstitialAd()V
    .locals 0

    .prologue
    .line 673
    return-void
.end method

.method public onFailedToReceiveNativeAd()V
    .locals 0

    .prologue
    .line 742
    return-void
.end method

.method public onInterstitialAdClick()V
    .locals 0

    .prologue
    .line 685
    return-void
.end method

.method public onInterstitialDismiss()V
    .locals 0

    .prologue
    .line 691
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Key down "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 506
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->closeButton:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 508
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->closeButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 509
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->onDismissScreen()V

    .line 514
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 511
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onLeaveApplicationFromInterstitial()V
    .locals 0

    .prologue
    .line 703
    return-void
.end method

.method public onLoadError()V
    .locals 1

    .prologue
    .line 653
    const-string v0, "Error while loading the ad"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 654
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->onDismissScreen()V

    .line 655
    return-void
.end method

.method public onMraidRewardClick(Z)V
    .locals 3

    .prologue
    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "close with reward1"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 756
    if-nez p1, :cond_0

    .line 757
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/mdotm/android/view/MdotMActivity;->rewardString:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/mdotm/android/listener/InterstitialActionListener;->onRewardedVideoComplete(ZLjava/lang/String;)V

    .line 763
    :goto_0
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->finish()V

    .line 764
    return-void

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mdotm/android/view/MdotMActivity;->rewardString:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/mdotm/android/listener/InterstitialActionListener;->onRewardedVideoComplete(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public onNativeAdClick()V
    .locals 0

    .prologue
    .line 750
    return-void
.end method

.method public onOpenUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 788
    const-string v0, "hidden"

    sput-object v0, Lcom/mdotm/android/mraid/MdotMMraidConstants;->mraidState:Ljava/lang/String;

    .line 789
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->webView:Lcom/mdotm/android/view/MdotMXhtmlView;

    const-string v1, "viewableChange"

    invoke-virtual {v0, v1}, Lcom/mdotm/android/view/MdotMXhtmlView;->fireMraidEvent(Ljava/lang/String;)V

    .line 790
    new-instance v0, Lcom/mdotm/android/view/MdotMActivity$7;

    invoke-direct {v0, p0, p1}, Lcom/mdotm/android/view/MdotMActivity$7;-><init>(Lcom/mdotm/android/view/MdotMActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 812
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 310
    const-string v0, "onPause is called"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 312
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->mVideoView:Lcom/mdotm/android/view/MdotMVideoView;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->mVideoView:Lcom/mdotm/android/view/MdotMVideoView;

    invoke-virtual {v0}, Lcom/mdotm/android/view/MdotMVideoView;->PauseVideo()V

    .line 315
    :cond_0
    iget-boolean v0, p0, Lcom/mdotm/android/view/MdotMActivity;->adClicked:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/mdotm/android/view/MdotMActivity;->didDismissCalled:Z

    if-nez v0, :cond_1

    .line 316
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->onDismissScreen()V

    .line 318
    :cond_1
    return-void
.end method

.method public onPlayError()V
    .locals 1

    .prologue
    .line 579
    const-string v0, "Error while palying video"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->interstitialActionListener:Lcom/mdotm/android/listener/InterstitialActionListener;

    invoke-interface {v0}, Lcom/mdotm/android/listener/InterstitialActionListener;->onFailed()V

    .line 583
    :cond_0
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->onDismissScreen()V

    .line 585
    return-void
.end method

.method public onPlayStop()V
    .locals 1

    .prologue
    .line 589
    const-string v0, "completed palying video"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 591
    return-void
.end method

.method public onReceiveInterstitialAd()V
    .locals 0

    .prologue
    .line 709
    return-void
.end method

.method public onReceiveNativeAd(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mdotm/android/nativeads/MdotMNativeAd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 818
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 295
    const-string v0, "onResume is called"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    iget-boolean v0, p0, Lcom/mdotm/android/view/MdotMActivity;->adClicked:Z

    if-eqz v0, :cond_1

    .line 298
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMActivity;->onDismissScreen()V

    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMActivity;->adClicked:Z

    .line 303
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 305
    return-void

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->mVideoView:Lcom/mdotm/android/view/MdotMVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->mVideoView:Lcom/mdotm/android/view/MdotMVideoView;

    invoke-virtual {v0}, Lcom/mdotm/android/view/MdotMVideoView;->isReadyToPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity;->mVideoView:Lcom/mdotm/android/view/MdotMVideoView;

    invoke-virtual {v0}, Lcom/mdotm/android/view/MdotMVideoView;->playVideo()V

    goto :goto_0
.end method

.method public onRewardedVideoComplete(ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 734
    return-void
.end method

.method public onUseCustomClose(Z)V
    .locals 1

    .prologue
    .line 770
    new-instance v0, Lcom/mdotm/android/view/MdotMActivity$6;

    invoke-direct {v0, p0, p1}, Lcom/mdotm/android/view/MdotMActivity$6;-><init>(Lcom/mdotm/android/view/MdotMActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 784
    return-void
.end method

.method public willShowInterstitial()V
    .locals 0

    .prologue
    .line 715
    return-void
.end method
